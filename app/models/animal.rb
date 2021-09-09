class Animal < ApplicationRecord
  belongs_to :specie, polymorphic: true

  def makeSound
    puts "Hola!"
  end
end
