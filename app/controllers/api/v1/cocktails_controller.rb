class Api::V1::CocktailsController < Api::V1::BaseController

  def show
    @cocktail = Cocktail.find(params[:id])
    # authorize @cocktail
  end

  # def show
  #   Cocktail.find(params[:name])
  # end

end
