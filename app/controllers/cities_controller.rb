class CitiesController < ApplicationController
  

  def index
    @cities = City.all
  end

  def show
    #@cities = City.find(params[:id])
  end

  def create
    @cities = City.create(city_params)
  end


  private
  def city_params
    params.require(:cities).permit(:name, :zip_code)
  end
end
