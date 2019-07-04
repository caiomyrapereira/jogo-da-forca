
require_relative "lib/forca"

jogo = Forca.new;

while   jogo.vitoria()  do
 
 puts "digite uma letra?"
 letra  = gets.chomp;
 jogo.adivinhar(letra)

   
end

