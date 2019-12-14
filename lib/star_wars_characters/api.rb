class StarWarsCharacters::API
    def self.fetch(query)
        url = "https://swapi.co/api"
        results = HTTparty.get("#{url}/people/query=#{query}")
    end
end


