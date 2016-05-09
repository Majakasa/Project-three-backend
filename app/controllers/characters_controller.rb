class CharactersController < ApplicationController
  def index
    render json: Character.all, status: 200
  end

  def create
    @character = Character.new(name: params[:name], gender: params[:gender], creator: params[:creator])
    if @character.save
      render json: @character, status: 200
    else
      render json: {error: "character could not be created."}, status: 422
    end
  end
  def show
    @character = Character.find(params[:id])
    render json: @character, status: 200
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    render json: @character, status: 200

  end

end
