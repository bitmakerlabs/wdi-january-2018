require './person.rb'

class Professor < Person

  def initialize(first_name, last_name, field_of_expertise)
    super(first_name, last_name)
    @field_of_expertise = field_of_expertise
  end

  def full_name
    "Dr. #{ super }"
  end

  def teach(cohort)
    cohort.each { |student| student.learn }
  end

end
