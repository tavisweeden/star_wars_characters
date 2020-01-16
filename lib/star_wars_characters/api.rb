class StarWarsCharacters::API
    #include HTTParty
    #def self.fetch(id)
        #url = "https://swapi.co/api/people/"
        #results = HTTParty.get(url+?search=(id))
        
        #results.each do |char_attribute|
        #StarWarsCharacters::Characters.new(char_attribute)

    #end
    
    def fetch
        base_uri = 'https://swapi.co/api/people/'
         response = HTTParty.get(base_uri)
         #response.each do |name|
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
            #binding.pry

        end

     end

end
#end
