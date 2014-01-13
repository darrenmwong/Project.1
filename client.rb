class Client
	attr_accessor :name, :age, :children, :pets

	def initialize(name, age, children, pets)
		@name = name
		@age = age
		@children = children
		@pets = pets
	end

	def removePet
		nPets = @pets.to_i
		nPets = nPets - 1
		@pets = nPets

 	end
 	

 	 def addPet
                nPets = @pets.to_i
                nPets = nPets + 1
                @pets = nPets
         end



end