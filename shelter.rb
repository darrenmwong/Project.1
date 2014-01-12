
class Shelter
	attr_accessor :name, :age, :animal_list,  :client_list

	def initialize(name, age, animal_list = [], client_list = [])
		@name= name
		@age = age
		@animal_list = animal_list
		@client_list = client_list

	end
    
    def get_animal_list
    	get_animals = @animal_list.inject("") do |all_animals, animal| 
        all_animals << "name: #{animal.name} - species: #{animal.species}... "
       end
  		get_animals

end
	def get_client_list
		get_clients = @client_list.inject("") do |all_clients, client|
			all_clients << "name: #{client.name}..."
		end
		get_clients
	end

end