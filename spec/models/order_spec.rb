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

require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
