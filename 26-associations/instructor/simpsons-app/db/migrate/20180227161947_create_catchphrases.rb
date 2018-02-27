class CreateCatchphrases < ActiveRecord::Migration[5.1]
  def change
    create_table :catchphrases do |t|
      t.string :phrase
      t.belongs_to :character
      t.timestamps
    end
  end
end
