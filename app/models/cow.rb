class Cow < ApplicationRecord
    has_many :animals, as: :specie

    def makeSound
        puts "Moo!"
    end
end
