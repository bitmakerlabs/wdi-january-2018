class Contact

  @@contacts = []
  @@next_id  = 1000

  def initialize(first_name, last_name, email, notes = 'N/A')
    @first_name = first_name
    @last_name  = last_name
    @email      = email
    @notes      = notes

    @id = @@next_id
    @@next_id += 1
  end

  def self.all
    @@contacts
  end

  def self.create(first_name, last_name, email, notes = 'N/A')
    new_contact = Contact.new(first_name, last_name, email, notes)
    new_contact.save
    new_contact
  end

  def self.find(id)
    # Iterate through the list (@@contacts)
    # Find the specific instance matching the id argument
    # Return that specific instance

    # Left to you for homework
  end

  # READERS
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def notes
    @notes
  end

  # WRITERS
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email=(email)
    @email = email
  end

  def notes=(notes)
    @notes = notes
  end

  # Instance Methods
  def full_name
    "#{ last_name }, #{ first_name }"
  end

  def save
    @@contacts << self
  end

end
