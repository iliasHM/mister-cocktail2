class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = find_cocktail
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params   # n'autorise que les modifs sur name depuis un formulaire
    params.require(:cocktail).permit(:name, :picture)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
