class RemoveLtoShops < ActiveRecord::Migration
  def change
    remove_column :shops, :l, :boolean
  end
end
