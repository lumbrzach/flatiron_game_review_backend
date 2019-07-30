class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :image
      t.integer :release_date
      t.string :genre

      t.timestamps
    end
  end
end
