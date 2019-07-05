
require_relative "lerArquivotxt"

class Forca   
 

   def initialize
      
     @palavrar = palavra_proposta();
     @acerto = '_'*@palavrar.size;
     @tentativa = 0;
     @letra_repetida = "";

   end


   def adivinhar(letra)

      system( 'cls'  )

    if @letra_repetida.count(letra) == 0

      @letra_repetida+=letra;

      cont = @acerto.size - 1;

      (0..cont).each do |item |
      
        @palavrar[item] == letra  ?   @acerto[item] = letra : "";

      end
       
      @acerto.count( letra ) == 0 ?  @tentativa +=1 : "" ;
     
      Corpo_enforcado.desenha( @tentativa.to_s )
      puts
      puts @tentativa  ==  6 ? "Perdeu o jogo..." : @acerto
      puts @palavrar   ==  @acerto ? "ganhou o jogo" : ""; 

    else
      puts "'#{letra}' essa letra é ja foram repetida"
      puts "tente outro."  
    
    end 

      
 
   end   
    
   

   def palavra_proposta()
     
     "tomate"

   end



   def vitoria()
    
     !(@acerto ==  @palavrar) && @tentativa < 6
         
   end



end


