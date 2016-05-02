class CharactersController < ApplicationController
  def index
  # Don't have a view in the BE, so don't need this instance variable:
  # @products = Product.all

  # instead let's render JSON
  render json: Character.all, status: 200
end
end
