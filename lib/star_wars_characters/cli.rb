 #class StarWarsCharacters::CLI
    #def call
        #puts "Welcome to the Star Wars Characters CLI!" 
        #menu
#     end

#     def menu
#         puts "Which character would you like to know more about?"

#         input = gets.strip 

#         StarWarsCharacters::API.fetch(input)
        
#         #StarWarsCharacters::Characters.all.each.with_index do |c,i|
#            # puts "#{i}. #{c.name}"

#     #end

#     end

# end
class StarWarsCharacters::CLI

    def call

        puts "Welcome to the Star Wars Characters CLI! Please type the name of a character you would like to learn more about and press enter:"

        @data = StarWarsCharacters::API.new.fetch
            StarWarsCharacters::Characters
        # StarWarsCharacters::Characters.all.each.with_index(+1) do |char, i|
        #     puts ("#{i}" + ".") + char.name
             menu
            
        end
    
    end

    def menu 
        input = gets.strip
        print_character 

    def print_character(character)
        puts "#{character.name}"
        puts "#{character.height}"
           binding.pry

     end


end




