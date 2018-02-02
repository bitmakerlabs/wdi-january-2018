require './person.rb'

fred  = Person.new('Fred', 'Ngo')
devon = Person.new('Devon', 'Whatever')
matt  = Person.new('Matt', 'Holtom')

puts fred.first_name
puts fred.last_name

puts matt.full_name

puts devon.full_name
devon.last_name = 'Jones'
puts devon.full_name
devon.first_name = 'Bill'
puts devon.full_name

puts fred.full_name

puts fred.greetings
fred.slumber
puts fred.greetings
fred.wake
puts fred.greetings
fred.mutate
puts fred.greetings
