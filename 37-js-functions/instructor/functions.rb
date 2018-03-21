# Basics

# Write a method that takes someone's order
def order(thing)
  puts "You've ordered #{thing}"
  if thing.length > 10
    return true
  end
  return false
end

# Call the method
success = order("Tractor")
puts success

my_function = order('asdf')



puts '---'*5

# Question:
# Can I assign it to a variable as a method? Why would I want to do this?



items = ['fork', 'spoon', 'knife']

items.each do |item|
  puts item
end























#
