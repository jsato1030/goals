class RemoveColumnToShops < ActiveRecord::Migration
  def change
    remove_column :shops, :carc, :string
    add_column  :shops, :card,  :string
  end
end
