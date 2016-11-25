class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :shop_id
      t.timestamps
    end
  end
end
