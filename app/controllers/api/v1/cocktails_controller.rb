class Api::V1::RestaurantsController < Api::V1::BaseController

  def show
    @cocktaol = Cocktail.find(params[:id])
    authorize @cocktail
  end

  # def show
  #   Cocktail.find(params[:name])
  # end

end
