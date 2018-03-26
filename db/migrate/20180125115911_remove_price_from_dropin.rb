class RemovePriceFromDropin < ActiveRecord::Migration[5.1]
  def change
    remove_column :dropins, :price, :text
  end
end
