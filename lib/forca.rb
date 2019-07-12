require_relative "boneco"
require_relative "palavra"
require_relative "message"

class Forca   
  attr_accessor :msg;
   def initialize
    
     @palavrar = Palavra.palavra_proposta();
     @size = @palavrar.size;
     @acerto = '_' *  @size ;
     @tentativa = 0;
     @letra_repetida = "";
     
     Corpo_enforcado.desenha( @tentativa.to_s )
     @msg = Message.new( @tentativa , @acerto )

   end

   def adivinhar(letra)

    if @letra_repetida.count( letra ) == 0  &&  letra.size == 1

      @letra_repetida+=letra;

      (0..@size).each do |item |
      
        @palavrar[item] == letra  ?   @acerto[item] = letra : "";

      end

      @acerto.count( letra ) == 0 ?  @tentativa +=1 : "" ;
     
      Corpo_enforcado.desenha( @tentativa.to_s )
      @msg.resultado( @tentativa , @palavrar , @acerto )

    else
      
      Corpo_enforcado.desenha( @tentativa.to_s )
      letra.size != 1 ? @msg.error() : @msg.repetida( letra ) 
    
    end 

   end   

   def vitoria()
    
     !(@acerto ==  @palavrar) && @tentativa < 6
         
   end

end