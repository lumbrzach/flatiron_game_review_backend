class CreateAdapters < ActiveRecord::Migration[5.2]
  def change
    create_table :adapters do |t|
      t.string :name
      t.timestamps
    end
  end
end
