class CreateDropins < ActiveRecord::Migration[5.1]
  def change
    create_table :dropins do |t|
      t.integer :time
      t.integer :price

      t.timestamps
    end
  end
end
