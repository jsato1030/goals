class CreateWomen < ActiveRecord::Migration
  def change
    create_table :women do |t|
      t.string  :name
      t.integer :age
      t.string  :rank
      t.text    :character
      t.text    :memo
      t.integer :user_id
      t.timestamps
    end
  end
end
