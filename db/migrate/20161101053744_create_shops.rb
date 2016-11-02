class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string  :name
      t.string  :genre
      t.string  :tel
      t.text    :address
      t.text    :transportation
      t.string  :bussiness_hours
      t.string  :regslar_holiday
      t.string  :carc
      t.string  :service_charge
      t.boolean :l
      t.timestamps
    end
  end
end
