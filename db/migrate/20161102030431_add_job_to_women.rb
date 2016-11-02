class AddJobToWomen < ActiveRecord::Migration
  def change
    add_column :women, :job, :string
  end
end
