
require_relative "lib/forca"
require 'tty-cursor'

cursor = TTY::Cursor

system( "cls" )

jogo = Forca.new;

while   jogo.vitoria()  do
 
 print cursor.move_to(30,11)
 
 print "digite uma letra:"
 letra  = gets.chomp;

 system( "cls" )
 
 jogo.adivinhar( letra )

end

