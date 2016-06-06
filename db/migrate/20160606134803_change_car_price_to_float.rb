class ChangeCarPriceToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :cars, :price, :float
  end
end
