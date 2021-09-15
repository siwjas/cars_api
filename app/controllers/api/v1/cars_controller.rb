class Api::V1::CarsController < ApplicationController
  before_action :set_car, only: [:show, :update, :destroy]

  def_param_group :car do
    param :name, String, 'Car name', required: true
    param :engine, String, 'Car motorization'
    param :cambio, String, 'Car gearbox type'
    param :fuel, String, 'Car fuel type'
    param :year, Integer, 'Year of manufacture of the car', required: true
    param :price, Float, 'Car price', required: true
    param :manufacturer_id, Integer, 'ar manufacturer id', required: true
  end

  # GET /cars
  api :GET, '/cars', 'Lists all cars'
  def index
    @cars = Car.all

    render json: @cars
  end

  # GET /cars/1
  api :GET, '/cars/:id', 'Lists one cars'
  param :id, :number, required: true, desc: 'Required car id'
  example " 'car': { 'id': 5 } "
  def show
    render json: @car
  end

  # POST /cars
  api :POST, '/cars', 'Create a car'
  param_group :car
  def create
    @car = Car.new(car_params)

    if @car.save
      render json: @car, status: :created, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cars/1
  api :PATCH, '/cars', 'Update a car'
  param :id, :number, required: true, desc: 'Car ID to be updated'
  param_group :car
  def update
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  api :GET, '/cars/:id', 'Lists one cars'
  param :id, :number, required: true, desc: 'Car ID to be deleted'
  example " 'car': { 'id': 5 } "
  def destroy
    @car.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_params
      params.require(:car).permit(:name, :engine, :cambio, :fuel, :price, :year, :manufacturer_id)
    end
end
