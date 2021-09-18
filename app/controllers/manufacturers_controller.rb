class ManufacturersController < ApplicationController
  before_action :set_manufacturer, only: [:show, :update, :destroy]

  # GET /manufacturers
  api :GET, '/manufacturers', 'Lists all manufacturers and their cars'
  def index
    @manufacturers = Manufacturer.all
    render json: @manufacturers
  end

  # GET /manufacturers/1
  api :GET, '/manufacturers/:id', 'Lists one manufacturer and their cars'
  param :id, :number, required: true, desc: 'Required manufacturer ID'
  example " 'manufacturer_id': 5 "
  def show
    render json: @manufacturer
  end

  # POST /manufacturers
  api :POST, '/manufacturers', 'Create a manufacturer'
  param :name, String, desc: 'Manufacturer name'
  example "'manufacturer': {  'name': 'Audi' } | /manufacturers"
  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      render json: @manufacturer, status: :created, location: @manufacturer
    else
      render json: @manufacturer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /manufacturers/1
  api :PATCH, '/manufacturers/:id', 'Updates a manufacturer partially'
  param :id, :number, desc: 'Manufacturer id to be updated'
  param :name, String, desc: 'Manufacturer name to be updated'
  example " 'manufacturer': { 'id': 5, 'name': 'Audi' } | /manufacturers/5"
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
