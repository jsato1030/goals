class AddCounterToShops < ActiveRecord::Migration
  def change
    add_column :shops, :counter, :string
  end
end
