gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'films.sqlite3')

class Film < ActiveRecord::Base
  field :title, as: :string
  field :description, as: :text
  field :country, as: :string
  field :rating, as: :integer
  field :available, as: :boolean

end

# Film.create to create a film
# Film.find(1) to find a film by ID
# Film.find_by(title: "Harry Potter 1") to find a film by any attribute
# Film.all to get a list of all the films


Film.auto_upgrade!
