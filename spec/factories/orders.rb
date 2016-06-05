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
    car nil
  end
end
