class AddPriceToDropin < ActiveRecord::Migration[5.1]
  def change
    add_column :dropins, :price, :integer
  end
end
