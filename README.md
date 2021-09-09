# README
Las instrucciones de este proyecto son:

1. Crear diagrama
2. rails g model dog name
3. rails g model cat name
4. rails g model cow name
5. rails d model animal name specie:references{polymorphic}
6. @ /app/models/cat.rb
    /app/models/cow.rb
    /app/models/dog.rb 
    Agregar siguiente linea: 
    has_many :animals, as: :specie
7. @ /app/models/animal.rb agregar siguiente linea: 
    def makeSound
        puts "Hola!"
    end
8. @ /app/models/dog.rb agregar siguiente linea:
    def makeSound
        puts "Woof!"
    end
9. @ /app/models/cat.rb agregar siguiente linea:
    def makeSound
        puts "Meow!"
    end
10. @ /app/models/cow.rb agregar siguiente linea:
    def makeSound
        puts "Moo!"
    end
11. rails c
12. en consola escribir:
    Animal.create(name: "Rex", specie: Dog.new(name: "Pastor Aleman"))
    para probar modelo: 
    a = Animal.last
    a.specie.makeSound
    resultado: Woof!
    Animal.create(name: "Bort", specie: Dog.new(name: "Border Collie"))
    Animal.create(name: "Garfield", specie: Cat.new(name: "Orange Tabby"))
    Animal.create(name: "Juanito", specie: Cat.new(name: "Tabby"))
    Animal.create(name: "Lola", specie: Cow.new(name: "Holstein))
    Animal.create(name: "Manola", specie: Cow.new(name: "Angus"))

Otras sugerencias:

@ en vez de usar specie en "rails d model animal name specie:references{polymorphic}" utilizar "breed"