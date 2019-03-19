class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.text :type
      t.integer :dohnut_id

      t.timestamps
    end
  end
end
