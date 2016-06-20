file 'PetriNet-cli/main' => 'PetriNet-cli/main.hs' do
  Dir.chdir('PetriNet-cli')
  sh 'ghc main.hs'
  Dir.chdir('..')
end

task :serve => 'PetriNet-cli/main' do
  sh 'ruby server.rb'
end

task :clean do
  Dir.chdir('PetriNet-cli')
  sh 'rm *.hi'
  sh 'rm *.o'
  Dir.chdir('..')
end
