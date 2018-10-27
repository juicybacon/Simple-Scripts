# This is a simple dice rolling program

#Global variables below
$roll
dice=Integer
thrown=Integer

def question
	loop do
		print "Would you like to roll the dice (Y/N)? "
		$roll=gets.chomp.capitalize!
		break if $roll=="Y"
		break if $roll=="N"	
	end 
end

loop do
	print "What size dice would you like to use? "
	dice=gets.chomp.to_i
	break if dice>0
end

question
while $roll=="Y"
	thrown=rand(1...dice)
	puts ""
	puts "You have rolled a #{thrown}"
	question
end

puts
puts "Thank you for using the dice roll program created by Jason Baker 27/10/18"

loop do 
	print "Please press enter to exit: "
	leave=gets.chomp
	break if leave==""
end