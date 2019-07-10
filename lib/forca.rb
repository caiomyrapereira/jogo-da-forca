
require_relative "CorpoEnforcado"
require_relative "Palavra"

class Forca   
 
   def initialize
      
     @palavrar = Palavra.palavra_proposta();
     @acerto = '_'*  @palavrar.size ;
     @tentativa = 0;
     @letra_repetida = "";
     Corpo_enforcado.desenha( @tentativa.to_s )


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
      puts @tentativa  ==  6 ? "Perdeu o jogo!" : @acerto
      puts @palavrar   ==  @acerto ? "Venceu o jogo!" : ""; 

    else
      
      puts "'#{letra}' essa letra ja foram repetida"
      puts "tente outro."  
    
    end 

   end   

   def vitoria()
    
     !(@acerto ==  @palavrar) && @tentativa < 6
         
   end

end


