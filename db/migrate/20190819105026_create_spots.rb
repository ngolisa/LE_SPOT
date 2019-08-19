class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :city
      t.references :user, foreign_key: true
      t.string :address
      t.string :type
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
