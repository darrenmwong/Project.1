require './animal'
require './client'
require './shelter'


=begin
Client
	-name
	-number of children
	-age
	-number of pets
Shelter
	-display clients
	-display animals

CAN CRETE ANIMALS AND CLIENTS
NEW ANIMALS AND CLIENTS CAN BE ADDED TO SHELTER
	-When creating an animal or client, promp them for information
			-names
			-gender

*****LOG****
Display animals
Display clients
creates animal
creates a client
facilitate client adopts animal
facilitate clients puts an animal up for adoption

=end
shelter = Shelter.new("Happyitails Shelter", 24)
	
def menu message
	puts "HappiTails Animal Shelter"

 	 puts "#{message}\n\n" unless message.empty?

 	 puts '1 : Display Animals'
 	 puts '2 : Display Clients'
 	 puts '3 : Create an Animal'
 	 puts '4 : Create a Client'
 	 puts '5 : Adopt an Animal'
 	 puts '6 : Put Animal Up For Adoption'
 	 puts "q : Quit\n\n"
 	 print '--> '
  	 gets.chomp
 end

message = ""
choice = menu message
all_animals = []
all_clients = []

while choice != 'q'
  message = ""
  case choice
  when "1"
    message += shelter.get_animal_list
  when "2"
    message += shelter.get_client_list
=begin  Animals need
	-name
	-age
	-gender
	-species
	-can have multiple toys
=end
  when "3"
    message += 'Animal Created'
    # temp = []
    print "Name:" ; name = gets.chomp
    print "Age:" ; age = gets.chomp
    print "Gender:" ; gender = gets.chomp
    print "Species:" ; species = gets.chomp
 	print "Toys:" ; toys = gets.chomp
    # temp = temp.push(animal_age, animal_gender, animal_species, animal_toys)
    shelter.animal_list << Animal.new(name, age, gender, species, toys)
    # animal = {
    # 	animal_name => temp
    # }
    # all_animals << animal


  when "4"
    message += 'Client Created'
    temp = [] 
    puts "What is the clients name"
    client_name = gets.chomp
    puts "What is the clients age?"
    client_age = gets.chomp
    puts "Number of children"
    client_children = gets.chomp
    shelter.client_list << Client.new(client_name, client_age, client_children, "")

    # temp = temp.push(client_age)
    # human = {
    # 	client_name => temp
    # }
    # puts human


   
  when "5"
    message += 'Adopted'
    shelter.client_list.each do |client|
  	puts client.name
  end
    print "Client:" ; get_client = gets.chomp
    shelter.client_list.each do |client|
    	if client.name == get_client
    		client.addPet
    	end
    end

    shelter.animal_list.each do |animal|
    	if animal.adopted = nil && false
    	print animal.name
    	puts " "
  	  end
  	  	print animal.name
  	  	puts " "
	end
	print "Select a pet:"
	selected_animal = gets.chomp
	shelter.animal_list.each do |animal|
		if animal.name == selected_animal	
			animal.pet_adopted
    	#all available animals
    end
    
    message = "Adopted #{selected_animal}"
    end

  
  when "6"
    message += 'option 6'
    shelter.client_list.each do |client|
    print "#{client.name} "
    puts " "
	end

    print "Client:" ; get_client = gets.chomp
    shelter.client_list.each do |client|
  	  if client.name == get_client
  	  	client.removePet
  	  end
  
    shelter.animal_list.each do |animal|
    if animal.adopted = true
    end
   	print animal.name
    puts " "
end
  	print "Select a pet:"
	selected_animal = gets.chomp
	shelter.animal_list.each do |animal|
		if animal.name == selected_animal	
			animal.adopted_pet?
		else
			puts "Animal Was Not Yours" 
	end
	message = 'Adopted animal to shelter'
end

end


  else
      message += "I don't understand ..."
  end
  choice = menu message


end
