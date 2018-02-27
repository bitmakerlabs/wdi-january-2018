class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.integer :number
      t.string :title
      t.belongs_to :season
      t.timestamps
    end
  end
end
