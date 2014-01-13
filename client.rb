class Client
	attr_accessor :name, :age, :children, :pets

	def initialize(name, age, children, pets = nil)
		@name = name
		@age = age
		@children = children
		@pets = pets
	end

	def avaliable?
    
    pets.nil?
 	
 	end

end