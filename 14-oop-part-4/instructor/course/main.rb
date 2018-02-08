require './professor.rb'
require './student.rb'

albert = Professor.new('Albert', 'Einstein', 'Physics')

jill = Student.new('Jill', 'Student')
jack = Student.new('Jack', 'Ma')
bill = Student.new('Bill', 'Li')
mike = Person.new('Mike', 'Person')

cohort = []
cohort << jill
cohort << jack
cohort << bill
# cohort << mike

10.times { albert.teach(cohort) }
jill.slack
puts jill.knowledge_level
puts jack.knowledge_level
puts bill.knowledge_level
