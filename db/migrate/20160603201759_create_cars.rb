class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string   :make
      t.string   :model
      t.string   :image
      t.string   :description
      t.integer  :price
      t.timestamps
    end
  end
end
