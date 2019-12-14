class StarWarsCharacters::CLI
    def call
        puts "Welcome to the Star Wars Characters CLI!" 
        menu
    end

    def menu
        puts "Which character would you like to know more about?"

        input = gets.strip 

        StarWarsCharacters::API.fetch
        (input)
    end

end