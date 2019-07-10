
class Palavra

   def self.palavra_proposta()
       
       v = [];

       File.open(File.expand_path("../texto/palavras.txt",__FILE__),'r')  do |arq|
         
       
           while line = arq.gets

            v.push( line )

           end
       end

       v.sample.chomp

   end

end