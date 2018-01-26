class AddStaffIdToAbouts < ActiveRecord::Migration[5.1]
  def change
    add_column :abouts, :staff_id, :integer
  end
end
