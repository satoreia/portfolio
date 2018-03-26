class AddNameToStaffs < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :name, :string
  end
end
