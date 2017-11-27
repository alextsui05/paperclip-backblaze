require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

task :console do
  require 'pry'
  require 'backblaze'

  def reload!
    headers = Backblaze::B2::Base.headers
    vars = Backblaze::B2.instance_variables.map { |k| [k, Backblaze::B2.instance_variable_get(k)] }.to_h
    base_uri = Backblaze::B2::Base.base_uri
    files = $LOADED_FEATURES.select { |feat| feat =~ /\/backblaze\// }
    files.each { |file| load file }
    vars.each do |key, value|
      Backblaze::B2.instance_variable_set(key, value)
    end
    Backblaze::B2::Base.base_uri(base_uri)
    Backblaze::B2::Base.headers(headers)
    true
  end

  ARGV.clear
  Pry.start
end
