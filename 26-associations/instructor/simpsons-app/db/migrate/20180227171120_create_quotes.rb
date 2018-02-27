class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :quote
      t.date :date
      t.belongs_to :episode
      t.belongs_to :character
      t.timestamps
    end
  end
end
