
require_relative "lib/forca"
require_relative "commdOS/clear"

require 'tty-cursor'
require 'tty-platform'

cursor = TTY::Cursor
platform = TTY::Platform.new

system( Clear.name( platform.os ) )


jogo = Forca.new;

while   jogo.vitoria()  do
 
 print cursor.move_to(30,11)
 
 print "digite uma letra:"
 letra  = gets.chomp;
 
system( Clear.name( platform.os ) )

 
 jogo.adivinhar( letra )

end

