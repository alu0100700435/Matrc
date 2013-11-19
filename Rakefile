require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :spec

desc "Ejecucion pruebas unitarias"
task :test do
 sh "ruby -I./lib test/tc_matrices.rb"
end
