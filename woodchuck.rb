require 'awesome_print'

class Woodchuck

	attr_accessor :chuck_count 

	#woodchuck count
	@@woodchuck_count = 0
	#use a constant it doesn't change with a new object array as a container (the container itself is the constant)
	# we always want it to be an array so we use a constant
	# we could use a class var tho, but a constant is more like a safeguard
	WOODCHUCKS = []

#we want to know how many woodchuck objects are made
#intialize is doing two things on two diff levels (class an instance)
	def initialize
		 @chuck_count = 0
		 @@woodchuck_count += 1
		 #each self is an instance obj/var
		 WOODCHUCKS << self
	end

	def chuck_wood(num)
		@chuck_count += num
	end

	#this is awesome
	def what_is_self
		self.class
	end
	
	def self.woodchuck_count
		@@woodchuck_count
	end

	def self.change_count(count)
		@@woodchuck_count = count
	end

	#it is the class that is the self
	def self.what_is_self
		self
	end
#to differentiate the syntax of a class method from
#an instance method we use Self

end

	def instantiate_woodchucks
		(rand(100) + 1).times do
			Woodchuck.new
		end
	end

	instantiate_woodchucks

	def individual_wood_chucked
		Woodchuck::WOODCHUCKS.each do |woodchuck|
			woodchuck.chuck_wood((rand(100) + 1))
		end
	end

	individual_wood_chucked

	def total_wood_chucked
		chucked_wood = 0
		Woodchuck::WOODCHUCKS.each do |woodchuck|
			chucked_wood += woodchuck.chuck_count
		end
		puts chucked_wood
	end

	total_wood_chucked
	ap Woodchuck::WOODCHUCKS


#NOTES
# #we are calling the initalize method ON class Woodchuck
# ralph = Woodchuck.new
# ralph.chuck_wood

# puts "what is self INSTANCE METHOD?"
# puts ralph.what_is_self
# #return object/instance: <Woodchuck:0x007fee3a847b98>
# puts "what is self's class INSTANCE METHOD?"
# puts ralph.what_is_self.class
# #return what the object type is: Woodchuck

# puts "what is self's CLASS METHOD?"
# puts Woodchuck.what_is_self
# #What are you class: Woodchuck
# #woodchuck is an object of class
# puts "what is self's class CLASS METHOD?"
# puts Woodchuck.what_is_self.class
# #what type of a thing is woodchuck: Class

# mark = Woodchuck.new
# marvin = Woodchuck.new
# jasper = Woodchuck.new

# puts Woodchuck.woodchuck_count
# #or get meta........
# puts ralph.class.woodchuck_count

# puts Woodchuck::WOODCHUCKS.inspect
# []
# # Woodchuck::WOODCHUCKS << "woodchuck"
# # puts Woodchuck::WOODCHUCKS.inspect
# # ["woodchuck"]

# #after we shovel in all the woodchucks to the constant in initialize
# puts Woodchuck::WOODCHUCKS.inspect


# Woodchuck::WOODCHUCKS.each do |woodchuck|
# 	woodchuck.chuck_wood
# end

# puts Woodchuck::WOODCHUCKS.inspect

#[#<Woodchuck:0x007fca030451f8 @chuck_count=2>, 
#<Woodchuck:0x007fca03044e10 @chuck_count=1>, 
#<Woodchuck:0x007fca03044d98 @chuck_count=1>, 
#<Woodchuck:0x007fca03044d70 @chuck_count=1>]

#[#<Woodchuck:0x007f9b188457c8 @chuck_count=1>, #<Woodchuck:0x007f9b18845390 @chuck_count=0>, 
#<Woodchuck:0x007f9b18845368 @chuck_count=0>, #<Woodchuck:0x007f9b18845340 @chuck_count=0>, 
#"woodchuck"]

	# def level_set
	# 	(rand(100) + 1)
	# end

#How much wood would a woodchuck chuck if a woodchuck could chuck wood?""

# 	Woodchuck::WOODCHUCKS.inspect

# 	#end
# puts Woodchuck::WOODCHUCKS.inspect

#> returns the class variable @@woodchuck count 
#> 4

#to differentiate the syntax of a class method from
#an instance method we use Self

#Class --> class Woodchuck (object of the class :class) 
#--> ralph(instance of Woodchuck & also an object)

