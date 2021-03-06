###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 01
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator.

# 2. Ask the user for their name and store it in a variable.


# 3. Personally greet the player by printing to the screen, "Hi player_name!
#	 Let them know they have 3 guesses to guess the Secret Number that is between 1 and 10.


# 4. Create a new Integer variable called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.

# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.

# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.

# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).

# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.

#     1. If they guessed correctly, tell them they won and exit the
#        game.
#
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print "Game Over" and
#     let the player know the `secret_number`.
#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
#
###############################################################################

<<<<<<< HEAD:HW_01.rb
# METHOD THAT ASKS FOR THE GUESS AND CHECKS IF THE GUESS IS CORRECT
def makeGuess(secret_number,guesses_left)
	puts "You have #{guesses_left} guesses left."
	puts "Try to guess the number."
	guess = gets.to_i

	if guess == secret_number
		return true
	else
		guesses_left = guesses_left - 1
		puts "\nThat is not correct."
		if guesses_left != 0
			if guess < secret_number 
				puts "You need to guess higher on your next guess"
			else
				puts "You need to guess lower on your next guess"
			end
		end

		return false
	end
end

#INTITIALIZE KEY VARIABLES
guesses_left = 3
secret_number = 6

#GAME INTRODUCTION
puts "Welcome to Brad's Game.  This game was created by Brad Weinberg."
puts "What is your first name?"

#GET THE PERSON'S NAME AND GREAT THEM AND EXPLAIN THE GAME
name = gets.chomp
puts "\nHi #{name}!"
puts "You will have 3 guesses to guess the Secret Number.  The Secret Number is between 1 and 10."

#LOOP THREE TIMES OR UNTIL PLAYER CORRECTLY GUESSES THE NUMBER
3.times do
		#IF THE PLAYER GUESSES CORRECTLY, TELL THEM AND EXIT THE GAME
	if makeGuess(secret_number,guesses_left) == 1
		puts "\nCongratulations! You guessed the number correctly. Game over."
		exit
	else
		guesses_left = guesses_left - 1
	end
end

#AFTER THREE GUESSES EXIT THE GAME
puts "Game Over. The secret number is #{secret_number}"
exit
=======


def greet_player(name)
	puts "Hi #{name}! Welcome to Guess That Number! You will have three attempts to guess the mystery number. Good Luck"
end

def guessPlural(num)
	if num == 1
		"guess"
	else
		"guesses"
	end
end
guesses_left = 3
secret_number = 8

puts "Welcome to Guess that Number!!! Presented to you by Rob. Please enter your name"
userName = gets.chomp
greet_player(userName)

guesses_left.downto(1) do |tries|
	puts "Please guess a number"
	userGuess = gets.chomp
	guess = userGuess.to_i
	if guess < secret_number
		puts "You guessed to low"
		puts "You have #{tries-1} #{guessPlural(tries-1)} left"
		if tries == 1
			puts "Gameover"
		end
	elsif guess > secret_number
		puts "Your guess is too high"
		puts "You have #{tries-1} #{guessPlural(tries-1)} left"
		if tries == 1 
			puts "Gameover"
		end
	else guess == secret_number
		puts "Congratulations!!! You guessed the right number"
		break
	end
end


#Rob's Solution
>>>>>>> 7edbceb9832097357cb7842bca0e13f679d71f0f:HW_01_Robert_Young_Solution.rb
