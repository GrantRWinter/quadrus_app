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

  describe "validations" do
    it "is invalid without a make" do
      car = Car.new(make: nil)
      car.valid?
      expect(car.errors[:make]).to include "can't be blank"
    end

    it "is invalid without a model" do
      car = Car.new(model: nil)
      car.valid?
      expect(car.errors[:model]).to include "can't be blank"
    end

    it "is invalid without a description" do
      car = Car.new(description: nil)
      car.valid?
      expect(car.errors[:description]).to include "can't be blank"
    end

    it "is invalid without a price" do
      car = Car.new(price: nil)
      car.valid?
      expect(car.errors[:price]).to include "can't be blank"
    end

    it "is invalid without a price" do
      car = Car.new(price: "not_numerical")
      car.valid?
      expect(car.errors[:price]).to include "is not a number"
    end

    it "is invalid if same make and model already exist" do
      car1 = FactoryGirl.create(:car)
      car2 = FactoryGirl.build(:car)
      car2.valid?
      expect(car2.errors[:model]).to include "is already listed with this Make"
    end

  end
end
