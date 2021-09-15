class Api::V1::ManufacturersController < ApplicationController
  before_action :set_manufacturer, only: [:show, :update, :destroy]

  def_param_group :manufacturer do
    param :name, String, 'Name of the manufacturer', required: true
  end

  # GET /manufacturers
  api :GET, '/manufacturers', 'Lists all manufacturers and their cars'
  def index
    @manufacturers = Manufacturer.all
    render json: @manufacturers
  end

  # GET /manufacturers/1
  api :GET, '/manufacturers/:id', 'Lists one manufacturer and their cars'
  param :id, :number, required: true, desc: 'Required manufacturer id'
  api :GET, '/manufacturers/:id/cars/:car_id', 'Lists a car belonging to the current manufacturer'
  param :id, :number, required: true, desc: 'Required manufacturer id'
  param :car_id, :number, required: true, desc: 'Required car id'
  def show
    render json: @manufacturer
  end

  # POST /manufacturers
  api :POST, '/manufacturers', 'Create a manufacturer'
  param_group :manufacturer
  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      render json: @manufacturer, status: :created, location: @manufacturer
    else
      render json: @manufacturer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /manufacturers/1
  api :PUT, '/manufacturers/:id', 'Update a manufacturer'
  param :id, :number, required: true, desc: 'Manufacturer id to be updated'
  def update
    if @manufacturer.update(manufacturer_params)
      render json: @manufacturer
    else
      render json: @manufacturer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /manufacturers/1
  api :DELETE, '/manufacturers/:id', 'Delete a manufacturer'
  param :id, :number, required: true, desc: 'Manufacturer id to be deleted'
  def destroy
    @manufacturer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manufacturer
      @manufacturer = Manufacturer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manufacturer_params
      params.require(:manufacturer).permit(:name)
    end
end
