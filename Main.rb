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
	puts 'clear'
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
    message += 'Animals Displayed'
    Animal.display_animals.select do |x|
    	puts x
    end
  when "2"
    message += 'Clients Displayed'
    puts "#{all_clients}"	
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
    puts "What would you like to name your animal?"
    name = gets.chomp.to_s
    puts "What age is your animal?"
    age = gets.chomp.to_s
    puts "What gender is your animal?"
    gender = gets.chomp.to_s
    puts "What kind of species is your animal?"
    species = gets.chomp.to_s
    puts "List of toys?"
    toys = gets.chomp.to_s
    # temp = temp.push(animal_age, animal_gender, animal_species, animal_toys)
    shelter.animal_list << Animal.new(name, age, gender, species, toys)
    puts "#{shelter.animal_list}"
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
    puts "Number of pets"
    shelter.client_list << Client.new(client_name, client_age, client_children)

    # temp = temp.push(client_age)
    # human = {
    # 	client_name => temp
    # }
    # puts human


   
  when "5"
    message += 'Adopted'

  
  when "6"
    message += 'option 6'

  else
      message += "I don't understand ..."
  end
  choice = menu message


end
