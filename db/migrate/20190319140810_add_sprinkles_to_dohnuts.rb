class AddSprinklesToDohnuts < ActiveRecord::Migration[5.2]
  def change
    add_column :dohnuts, :sprinkles, :boolean
  end
end
