

class Forca   
 

   def initialize
      
     @palavrar = palavra_proposta();
     @acerto = '_'*@palavrar.size;

   end


   def adivinhar(letra)
         

     (0..@acerto.size-1).each do |item |
      
       if @palavrar[item] == letra  
       
           @acerto[item] = letra

       end

     end

     puts @acerto


   end   
    
   

   def palavra_proposta()
     
     "tomate"

   end



   def vitoria()
   
     !(@acerto ==  @palavrar) 
         
   end

   def corpo_enforcado()
   

         
   end





end


