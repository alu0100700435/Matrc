require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecución pruebas RSpec"
task :spec do
  sh "rspec spec/matrices_spec.rb --format documentation"
end

desc "Ejecución Unit Testing"
task :test do
  sh "ruby test/tc_matrices.rb"
end
