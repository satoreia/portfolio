class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.integer :staff_id
      t.datetime :created_at
      t.datetime :update_at
      t.string :title
      t.text :body
      t.string :contributor

      t.timestamps
    end
  end
end
