class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :author
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
