class Animal
	attr_accessor :name, :age, :gender, :species, :toys, :adopted

	def initialize(name, age, gender, species, toys, adopted = nil)
		@name = name
		@age = age
		@gender = gender
		@species = species
		@toys = toys
		@adopted = adopted
	end

	def is_adopted
		return adopted
	end

	def adopted_pet?
		@adopted = false
	end

	def pet_adopted
		@adopted = true
	end







	end


