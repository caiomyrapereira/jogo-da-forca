
class Clear

     def self.name( os )
       
       case os

       when 'mingw32'
        'cls'

       when 'linux'
        'clear'
       	
       end

     end 


end