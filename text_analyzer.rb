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
	character_count = text.length
#	text = text.split(" ")
	word_count = text.split(" ").length
	puts("Word Count: #{word_count}")
	space_count= word_count-1 # assumes properly formatted document, else can use scan /\s/
	puts ("Space Count: #{space_count}") ## works due to inherent logic behind wordcount
	vowel_count = text.scan(/[aeiou]/).count
	# note we CANNOT simply get consanantcount via text.length-vowelcount-spacecount due to potential presence of other punctuation characters within the string, we would have to re-scan for punctuation marks - at this point just doing a constantcount scan is close enough from an efficiency standpoint
	consonant_count = text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
	
	#most_used_word
	#goal: use for loop to iterate through text, add items as keys to hash - if already present, increase the value of the present key by 1
	text_array = text.split(" ")
	word_count_hash = {}
	for i in 0... text_array.length
		if word_count_hash.has_key?(text_array[i]) # implicit == true, has_key? returns a boolean
			word_count_hash[text_array[i]] += 1
		else word_count_hash[text_array[i]] = 0
		end
		most_used_word = word_count_hash.max_by{|k,v| v}
	end
	result = {:words => word_count, :spaces => space_count, :vowels => vowel_count, :mostused => most_used_word}
	puts(result)
end

text_analyzer("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore est est est et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")

#alternative spacecount logic
	# spacecount = 0
	# for i in 0.. text.length
	# 	if text[i] == " "
	# 		spacecount += 1
	# 	end
	# 	i+=1
	# end
