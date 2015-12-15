# Bonus assignment: Create a "choose your own adventure" Ruby game using the gets ruby method to get user input from the command line. Have the game send the user down many different paths depending on the input that they enter. Use objects to store data about the user and different items they could collect along the way. Seehttp://en.wikipedia.org/wiki/Interactive_fiction (Links to an external site.) for a more in-depth description of "choose your own adventure"-style command line games.

# Note: If you complete assignment 1 only, you are eligible for a 10/10 for homework. The bonus assignment is just a great way to get a ton more Ruby practice!

# branching tree diagram

# | ____ 1 ____ |
# | __1_ 2 _3__ |
# | ____ 1 ____ |

class Player
	def initialize(healthpriority, magicpriority, chutzpahpriority)
		# determining starting stats
		if healthpriority == 1
			@max_health = 100
		elsif healthpriority == 2
			@max_health = 80
		else
			@max_health = 70
		end
		if chutzpahpriority == 1
			@max_chutzpah = 100
		elsif chutzpahpriority == 2
			@max_chutzpah = 80
		else
			@max_chutzpah = 70
		end
		if magicpriority == 1
			@max_magic = 100
		elsif magicpriority == 2
			@max_magic = 80
		else
			@max_magic = 70
		end
	end
end

def startup()
	puts("Hello, Welcome to Oregon Trail 2027.")
	puts("In Oregon Trail 2027, you have three primary attributes: health, magic, and chutzpah. Your health determines how much damage you can take, your magic allows you to cast spells, and your chutzpah... well, that's for you to find out.")
	puts("Please determine your primary, secondary, and tertiary attributes. 1 will indicate a primary attribute, 2 will indicate a secondary attribute, and 3 will indicate a tertiary attribute.")
	puts("Choose your health priority - enter one of 1, 2, or 3")
	# add code for improper entry
	healthpriority = gets.chomp.to_i
	puts("Choose your magic priority - enter one of 1, 2, or 3")
	# add code for improper entry
	magicpriority = gets.chomp.to_i
	while magicpriority == healthpriority
		puts "You have already selected this rank #{healthrank} for health. Would you like to overwrite your health rank? (Y/N)"
		if userinput == Y || userinput == y
			puts ("Your current priority for health is #{healthpriority}. Your current priority for magic is #{magicpriority}. Please enter a new priority for health. (1,2,3)")
			gets (healthpriority)
		elsif userinput == N || userinput == n
			puts ("Your current priority for health is #{healthpriority}. Your current priority for magic is #{magicpriority}. Please enter a new priority for magic. (1,2,3)")
			gets (magicpriority)
		else puts "I didn't understand that."
		end
	end
	# math derives chutzpah priority
	chutzpahpriority = 6-healthpriority-magicpriority
	puts ("Ok. Your health priority is #{healthpriority}. Your magicpriority is #{magicpriority}. Your chutzpah priority is #{chutzpahpriority}")
	puts("Your final decision in character creation, no more or less important than those that came before: what is your name?")
	name = gets.chomp
	# cheat code
	if name == "andy" || "niall"
		healthpriority = 1
		magicpriority = 1
		chutzpahpriority = 1
		puts ("max starting stats activated.")
	end
	puts("Alright, #{name}! Be careful. It's a dangerous world out there.")
	pc = Player.new(healthpriority, magicpriority, chutzpahpriority)
end
startup()

def partone()
	# choosing initial location
	if pc.max_chutzpah == 100
		location = "in a dark alley, reeking of liquor and stale cigarettes."
	elsif pc.max_health == 100
		location = "well rested, having slept like a baby last night."
	else
		location = "in the library, cups of coffee scattered around the desk you 'slept' on last night"
	end	
	puts ("You wake up #{location}. Today's the day you head west on your trip to Oregon. Your bags are packed, but there's one final thing you need to get before you leave. What is it?")
	puts ("1: A fifth of bourbon")
	puts ("2: A protein bar")
	puts ("3: A big to-go-cup of coffee")
	itemchoice= gets.chomp
end
partone()


	# charinfo = [name, healthpriority, magicpriority, chutzpahpriority]
	# return charinfo