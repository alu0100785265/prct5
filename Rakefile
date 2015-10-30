task :default => :tu

desc "Pruebas unitarias de la clase fraccion"
task :tu do
  sh "ruby -I. test/prueba_racional.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/prueba_racional.rb -n /test_simple/"
end
