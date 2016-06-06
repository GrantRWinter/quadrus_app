class Admins::CarsController < ApplicationController
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path
    else
      flash[:alert] = @car.errors.full_messages.to_sentence
      render :new
    end
  end

  def index
    @cars = Car.all
  end

  def edit
  end

  def update
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to admins_cars_path

  end

  private

    def car_params
      params.require(:car)
        .permit(:make, :model, :description, :price, :image, :available)
    end

    def set_s3_direct_post
      @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
    end
end
