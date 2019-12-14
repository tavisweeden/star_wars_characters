class StarWarsCharacters::API
#     def self.fetch(query)
#         url = "https://swapi.co/api/people/"
#         results = HTTparty.get("https://swapi.co/api/people/#{url}/?search=/query=#{query}")
#     end
# end

    def self.fetch
        url = "https://swapi.co/api/people/"
        results = HTTParty.get(url)
binding.pry 
    end

end
