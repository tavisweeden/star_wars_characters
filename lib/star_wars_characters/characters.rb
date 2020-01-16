class StarWarsCharacters::Characters 

    attr_accessor :name, :height, :mass, :hair_color, :skin_color, :eye_color, :birth_year, :gender

    @@all=[] 

    def initialize(name,height,mass,hair_color,skin_color,eye_color,birth_year,gender)
        @name = name
        @height = height
        @mass = mass
        @hair_color = hair_color
        @skin_color = skin_color
        @eye_color = eye_color
        @birth_year = birth_year
        @gender = gender

        @@all << self

        end

    def self.all
        @@all
    end

    def self.find(id)
        self.all[id-1]
    end
        #binding.pry

end