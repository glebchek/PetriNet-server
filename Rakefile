file 'cli/main' => 'cli/main.hs' do
  Dir.chdir('cli')
  sh 'ghc main.hs'
  Dir.chdir('..')
end

task :serve => 'cli/main' do
  sh 'ruby server.rb'
end

task :clean do
  Dir.chdir('cli')
  sh 'rm *.hi'
  sh 'rm *.o'
  Dir.chdir('..')
end
