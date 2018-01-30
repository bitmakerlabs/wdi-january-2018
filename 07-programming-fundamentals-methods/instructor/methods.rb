#puts "Hello Matt!"

#puts "Hello Alex!"

#puts "Hello Dmitry!"

def hello(name)
  #puts "Hello #{name}!"
end

#========

number_of_cats = 14
number_of_dogs = 5
total_animals = number_of_cats + number_of_dogs

favourite_films = 47
favourite_songs = 10
total_media = favourite_films + favourite_songs

def sum(first_number, second_number)
  if first_number < 0 || second_number < 0
    return 'Those are bad inputs!'
  end
  total = first_number + second_number
  return total
end

#sum(12, 14)
#sum(220, 1)
#sum(1000, 859)

#hello("Alex")
#hello("Matt")
#hello("Lulu")

amount = sum(250, 275)
puts "The calculation result was #{amount}"


# def thing
#   bottle = "Water bottle"
#   remote = "Remove control"
#   phone = "Cell phone"
#
#   puts bottle # returns NOTHING, nada, nil!
#   return bottle # returns 'Water bottle'
# end
#
# thing  # <-- calling the method
