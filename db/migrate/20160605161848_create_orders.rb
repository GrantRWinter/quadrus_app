class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :car, foreign_key: true
      t.string     :customer_first_name
      t.string     :customer_last_name
      t.timestamps
    end
  end
end
