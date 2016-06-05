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

class Car < ApplicationRecord
  has_many :orders

  # validates :make, presence: true

  validates :model, :uniqueness => {:scope => :make, :message => "is already listed with this Make"}


end
