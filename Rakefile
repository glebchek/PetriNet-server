file 'analysator/main' => 'analysator/main.hs' do
  Dir.chdir('analysator')
  sh 'ghc main.hs'
  Dir.chdir('..')
end

task :serve => 'analysator/main' do
  sh 'ruby server.rb'
end

task :clean do
  Dir.chdir('analysator')
  sh 'rm *.hi'
  sh 'rm *.o'
  Dir.chdir('..')
end
