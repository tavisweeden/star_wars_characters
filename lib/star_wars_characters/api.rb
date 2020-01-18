class StarWarsCharacters::API

    # def self.fetch
    #     base_uri = 'https://swapi.co/api/people/'
    #     response = HTTParty.get(base_uri)
    #     print response

    def self.fetch(char_name)
        base_uri = 'https://swapi.co/api/people/'
        response = HTTParty.get("#{base_uri}?search=#{char_name}")

        #print response
                    

        response["results"].each do |char|
            name = char["name"]
            height = char["height"]
            mass = char["mass"]
            hair_color = char["hair_color"]
            skin_color = char["skin_color"]
            eye_color = char["eye_color"]
            birth_year = char["birth_year"]
            gender = char["gender"]
            character = StarWarsCharacters::Characters.new(name,height,mass,hair_color,skin_color,eye_color,birth_year,gender)
            
            puts "Name: #{character.name}"
            puts "Height: #{character.height}"
            puts "Mass: #{character.mass}"
            puts "Hair Color: #{character.hair_color}"
            puts "Skin Color: #{character.skin_color}"
            puts "Eye Color: #{character.eye_color}"
            puts "Birth Year: #{character.birth_year}"
            puts "Gender: #{character.gender}"
            
            
                        
            #binding.pry

             

        end



    end

    

end


