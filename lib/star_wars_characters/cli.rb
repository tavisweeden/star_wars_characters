
class StarWarsCharacters::CLI
 
    def start
            puts ""
            puts "WELCOME TO THE STAR WARS CHARACTER CLI!"
            puts ""
            puts "Type the name of one of the following characters to learn more about them:"
            puts ""
            puts "***If you don't see the character you want to search in the list, simply type"
            puts "a name and we will search the database for it!***"
            puts ""
            puts "Luke Skywalker         Obi-Wan Kenobi"
            puts "C-3PO                  Anakin Skywalker"
            puts "R2D2                   Chewbacca"
            puts "Darth Vader            Han Solo"
            puts "Leia Organa            Lando Calrissian"
            puts "Palpatine              Yoda"
            puts "Boba Fett              Greedo"
            puts ""
            puts ""

            menu

            puts "Would you like to search another name? Type Y or N."
            input = gets.strip.downcase
                if input == "y"
                    start
                elsif input == "n"
                    exit
                else 
                    start
            end  
    end      
                
    
    def menu
            input = gets.strip
            StarWarsCharacters::API.fetch(input)
                        
    end
            
end            



    





