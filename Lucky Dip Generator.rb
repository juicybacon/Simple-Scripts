$lottery = Array.new
$numbers = Array.new
$num = 1
$answer
$n = 0

loop do 
	$lottery << $num
	$num += 1
	break if $num > 59
end

$lottery.to_a.shuffle!

def lucky_numbers
  puts "Your lucky dip numbers are :"
  loop do
    loop do
      $numbers << $lottery[$n]
      $n += 1
      break if $n > 5
    end
    $n = 0
    $numbers.sort!
    loop do
      print "#{$numbers[$n]} "
      $n += 1
      break if $n > 5 
    end
    puts ""
    break if $n > 5
  end
end

loop do
  print "Would you like your lucky dip numbers? "
  $answer=gets.chomp.capitalize!
  break if $answer == "Y"
  break if $answer == "N"
end

while $answer == "Y"
    puts ""
    lucky_numbers
    $numbers.clear
    $lottery.to_a.shuffle!
    $n = 0
  loop do
    print "Would you like some more lucky dip numbers? "
    $answer=gets.chomp.capitalize!
    break if $answer == "N"
    break if $answer == "Y"
  end 
  break if $answer == "N"
end

loop do
  print "Thank you for using the lucky dip generator press enter to exit"
  $answer=gets.chomp
  break if $answer == ""
end
