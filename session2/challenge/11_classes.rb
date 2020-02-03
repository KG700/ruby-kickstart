# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  
  def initialize(number)
    @number = number
    @number = 0 if number <= 0
    @number = 99 if number >= 99
  
  end
  
  def print_song
    
    number = @number
    
    while number > 0
 
      puts "#{beers(number).capitalize} #{bottle(number)} of beer on the wall,"
      puts "#{beers(number).capitalize} #{bottle(number)} of beer,"
      puts "Take one down, pass it around,"
      number -= 1
      puts "#{beers(number).capitalize} #{bottle(number)} of beer on the wall."
    
    end
    
  end
  
  def beers(number)

    ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine","ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    
    num_beer = ones[number] if number < 20
    num_beer = tens[number / 10 - 2] if number >= 20
    num_beer = num_beer + "-#{ones[number % 10]}" if number >= 20 && number % 10 > 0
    
    return num_beer
  end
  
  def bottle(number)
    number == 1? bottles = "bottle" : bottles = "bottles"
  end
end