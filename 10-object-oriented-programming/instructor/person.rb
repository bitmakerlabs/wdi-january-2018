class Person

  # Special instance method
  # will be called automatically by Person.new
  def initialize(first_name, last_name)
    # Instance Variables
    @first_name = first_name
    @last_name  = last_name

    @awake = true
    @tail  = false
  end

  # ATTRIBUTE READER methods
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  # ATTRIBUTE WRITER methods
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  # Instance Methods
  # Notice we go through the attribute readers here!
  # (Don't have to though)
  def full_name
    "#{ first_name } #{ last_name }"
  end

  def greetings
    if @awake
      if @tail
        '(Bounce Away)'
      else
        "Hi, my name is #{ full_name }"
      end
    else
      'Zzz'
    end
  end

  def slumber
    @awake = false
  end

  def wake
    @awake = true
  end

  def mutate
    @tail = true
  end

end
