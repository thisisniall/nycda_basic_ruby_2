# Homework
# Goals

# Continue to solidify your understanding of basic Ruby programming concepts

# Be prepared to learn about Ruby libraries on Wednesday

# Assignment

# Create a program to analyze a large block of text and report back on the frequency of each word in the text.

# Start by storing the text within a hash where each word is a key with the word's value being the amount of times it has been used in the block:
# ruby {the: 10, john: 1, of: 15}

# Once you've created this hash, return the word that has been used the most
# When you're done, encapsulate your script inside of a method that can analyze any block of text fed to it

def text_analyzer (text)
	puts("Characters: #{text.length}")
	charactercount = text.length
#	text = text.split(" ")
	wordcount = text.split(" ").length
	puts("Word Count: #{wordcount}")
	puts ("Space Count: #{wordcount-1}") ## works due to inherent logic behind wordcount
	vowelcount = text.scan(/["a", "e", "i", "o", "u"]/).count
	consonantcount = text.scan(/["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]/).count
	
end

text_analyzer("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

#alternative spacecount logic
	# spacecount = 0
	# for i in 0.. text.length
	# 	if text[i] == " "
	# 		spacecount += 1
	# 	end
	# 	i+=1
	# end
