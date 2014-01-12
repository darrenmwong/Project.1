
class Shelter
	attr_accessor :animal_list, :client_list 

	def initialize(animal_list = [], client_list= [])
		@animal_list = animal_list
		@client_list = client_list

	end

	# def show_clients
	# 	shelter.client_list.select do |x|
	# 	end
end