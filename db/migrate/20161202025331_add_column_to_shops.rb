class AddColumnToShops < ActiveRecord::Migration
  def change
    add_column :shops, :latitude, :float
    add_column :shops, :longitude, :float
  end
end
