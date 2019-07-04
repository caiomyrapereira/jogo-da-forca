class  Corpo_enforcado
   
  def  self.desenha(numero)
   
        File.open(File.expand_path("../art/fase#{numero}.txt",__FILE__),'r')  do |arq|

     
           while line = arq.gets

           print line
    
           end
          
         
        end 

    end
  
end


