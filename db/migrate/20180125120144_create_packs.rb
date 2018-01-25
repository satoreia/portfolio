class CreatePacks < ActiveRecord::Migration[5.1]
  def change
    create_table :packs do |t|
      t.integer :time
      t.integer :price

      t.timestamps
    end
  end
end
