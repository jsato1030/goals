class AddReviewToImages < ActiveRecord::Migration
  def change
    add_column :images, :review, :string
  end
end
