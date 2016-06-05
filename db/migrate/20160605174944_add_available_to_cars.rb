class AddAvailableToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :available, :boolean, default: true
  end
end
