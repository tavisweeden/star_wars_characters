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

        puts "Welcome to the Star Wars Characters CLI! Please type the number of a character you would like to learn more about and press enter:"

        @data = StarWarsCharacters::API.new.fetch
        @data
        StarWarsCharacters::Characters.all.each.with_index(+1) do |char, i|
            puts ("#{i}" + ".") + char.name
            menu
    
        end
    

        
    end

    def menu 
        input = gets.strip
        #gets input and puts all attributes of character
        
         
     end

end
end


