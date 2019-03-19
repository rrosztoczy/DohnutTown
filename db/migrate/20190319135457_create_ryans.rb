class CreateRyans < ActiveRecord::Migration[5.2]
  def change
    create_table :ryans do |t|
      t.text :name
      t.integer :coolness

      t.timestamps
    end
  end
end
