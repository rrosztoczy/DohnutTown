class RemoveSprinkesFromDohnuts < ActiveRecord::Migration[5.2]
  def change
    remove_column :dohnuts, :sprinkes, :boolean
  end
end
