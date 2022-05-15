class Api::V1::CocktailsController < Api::V1::BaseController

  def show
    @cocktail = Cocktail.find(params[:id])
    # authorize @cocktail
  end

  def name           # maybe pg search?
    if # one word
      @cocktail = Cocktail.find_by(name: params[:name].capitalize)
    else
      # split the words and capitalize each word, then put it all back together and search
    end

  end

end
