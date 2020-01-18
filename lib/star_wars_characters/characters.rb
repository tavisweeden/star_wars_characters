class StarWarsCharacters::Characters 

    attr_accessor :name, :height, :mass, :hair_color, :skin_color, :eye_color, :birth_year, :gender


    def initialize(name,height,mass,hair_color,skin_color,eye_color,birth_year,gender)
        @name = name
        @height = height
        @mass = mass
        @hair_color = hair_color
        @skin_color = skin_color
        @eye_color = eye_color
        @birth_year = birth_year
        @gender = gender

        end

    def self.all
        self.fetch
    
    end

end