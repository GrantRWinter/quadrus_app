require 'rails_helper'

RSpec.describe Admins::CarsController, type: :controller do
  let(:car) {create(:car)}

  describe 'GET #new' do
    it 'renders new template' do
      get :new
      expect(response).to render_template("new")
    end

    it 'assigns a new car' do
      get :new
      expect(assigns(:car)).to be_a_new(Car)
    end
  end

  describe 'POST #create' do
    context "when successful" do
      let(:car_params) { build(:car).attributes.symbolize_keys }

      it 'creates a new car' do
        expect{
          post :create, car: car_params
        }.to change(Car, :count).by 1
      end
    end

    context 'when unsuccessful' do
      it 'does not create a new car' do
        expect{
            post :create, car: {make: ""}
          }.to change(Car, :count).by 0
      end
    end
  end

  describe "GET #index" do
    it "should redirect to account holders view" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "DELETE #destroy" do
    let!(:car) {create(:car)}
    it "destroys the car" do
      expect{
        delete :destroy, {id: car}
      }.to change(Car, :count).by -1
    end
  end


end
