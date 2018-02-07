require './contact.rb'

Contact.create('Dave', 'Lee', '')
Contact.create('Dave', 'Lee', '')
Contact.create('Dave', 'Lee', '')

dave = Contact.find(1002)
