# == Schema Information
#
# Table name: cars
#
#  id          :integer          not null, primary key
#  make        :string
#  model       :string
#  image       :string
#  description :string
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  available   :boolean          default(TRUE)
#

require 'rails_helper'

RSpec.describe Car, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
