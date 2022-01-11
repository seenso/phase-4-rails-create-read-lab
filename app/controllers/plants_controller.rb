class PlantsController < ApplicationController

  # GET /plants
  def index
    plants = Plant.all
    render json: plants
  end

  # GET /plants/:id
  def show 
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end

  # POST /plants
  def create 
    plant = Plant.create(plant_params)
    render json: plant, status: :created
  end

  private #all methods below here are private
  
    # below is what it means to create a "strong params"
    def plant_params 
      params.permit(:name, :image, :price)
    end

end
