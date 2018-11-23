class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show edit update destroy]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save

    redirect_to root_path
  end

  def show
  end

  def edit

  end

  def destroy
    @cocktail.destroy
    redirect_to root_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
