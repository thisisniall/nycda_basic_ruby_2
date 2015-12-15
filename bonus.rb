# Bonus assignment: Create a "choose your own adventure" Ruby game using the gets ruby method to get user input from the command line. Have the game send the user down many different paths depending on the input that they enter. Use objects to store data about the user and different items they could collect along the way. Seehttp://en.wikipedia.org/wiki/Interactive_fiction (Links to an external site.) for a more in-depth description of "choose your own adventure"-style command line games.

# Note: If you complete assignment 1 only, you are eligible for a 10/10 for homework. The bonus assignment is just a great way to get a ton more Ruby practice!

# branching tree diagram

# | ____ 1 ____ |
# | __1_ 2 _3__ |
# | ____ 1 ____ |

puts("Hello, Welcome to Oregon Trail 2027. What is your character name?")
name = ""
gets(name)
puts("Greetings, #{name}! It's a dangerous world out there.")
puts("In Oregon Trail 2027, you have three primary attributes: health, magic, and chutzpah. Your health determines how much damage you can take, your magic allows you to cast spells, and your chutzpah... well, that's for you to find out.")
puts("Please determine your primary, secondary, and tertiary attributes. 1 will indicate a primary attribute, 2 will indicate a secondary attribute, and 3 will indicate a tertiary attribute.")
puts("Choose your health priority - enter one of 1, 2, or 3")
gets(healthpriority)
puts("Choose your magic priority - enter one of 1, 2, or 3")
gets(magicpriority)
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

chutzpahpriority = 6-healthpriority.to_i-magicpriority.to_i

puts ("Ok. Your health priority is #{healthpriority}. Your magicpriority is #{magicpriority}. Your chutzpah priority is #{chutzpahpriority}")