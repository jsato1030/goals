class AddLToShops < ActiveRecord::Migration
  def change
    add_column :shops, :l, :string
  end
end
