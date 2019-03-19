class CreateDohnuts < ActiveRecord::Migration[5.2]
  def change
    create_table :dohnuts do |t|
      t.text :flavor
      t.text :size
      t.boolean :sprinkes
      t.integer :ryan_id

      t.timestamps
    end
  end
end
