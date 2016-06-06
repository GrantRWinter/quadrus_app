# == Schema Information
#
# Table name: orders
#
#  id                  :integer          not null, primary key
#  car_id              :integer
#  customer_first_name :string
#  customer_last_name  :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

FactoryGirl.define do
  factory :order do
    car                 { FactoryGirl.create(:car)}
    customer_first_name "John"
    customer_last_name  "Doe"
  end
end
