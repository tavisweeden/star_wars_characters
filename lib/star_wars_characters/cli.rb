
class StarWarsCharacters::CLI

#     def call

#         puts "Welcome to the Star Wars Characters CLI! Please type the name of a character you would like to learn more about and press enter:"

#         @data = StarWarsCharacters::API.fetch
#          StarWarsCharacters::Characters.all.each.with_index(1) do |char, i|
#              puts "#{i}. #{char.name}"
#              #binding.pry

#              menu
            
#         end
    
#     end

#     def menu 
#         input = gets.strip
       

#      end


# end

        def start
            puts ""
            puts "Welcome to the Star Wars Characters CLI!"
            puts "Type the name of one of the following characters to learn more about them:"
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
                    puts "Sorry, we don't have a match for that name. Please try again!" 
                    start
                end            


        end


        def menu
            input = gets.strip

            StarWarsCharacters::API.fetch(input)
            
            #binding.pry
        end

    end






