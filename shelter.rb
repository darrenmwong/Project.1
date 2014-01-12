
class Shelter
	attr_accessor :name, :age, :animal_list 

	def initialize(name, age, animal_list = [])
		@name= name
		@age = age
		@animal_list = animal_list

	end

	# def show_clients
	# 	client_list.select do |x|
	# 	end

	#def show_pets
	#	animal_list.select do |x|
 	#	puts x
	#	end

end