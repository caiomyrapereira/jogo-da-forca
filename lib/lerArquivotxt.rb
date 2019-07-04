class  Corpo_enforcado
   
  def  self.desenha(numero)
     leitura  = [];

        File.open(File.expand_path("../art/fase#{numero}.txt",__FILE__),'r')  do |arq|

     
           while line = arq.gets

           puts line
    
           end
          
         
        end 

    end
  
end


