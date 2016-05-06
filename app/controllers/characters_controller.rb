class CharactersController < ApplicationController
  def index
    render json: Character.all, status: 200
  end

  def create
    @character = Character.new(name: params[:name], gender: params[:gender], creator: params[:creator])
    if @character.save
      render 'show', formats: [:json], handlers: [:jbuilder], status: 201
    else
      render json: {error: "character could not be created."}, status: 422
    end
  end
  def show
    @character = Character.find(params[:id])
    render json: Character.all, status: 200
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    render 'show', formats: [:json], handlers: [:jbuilder], status: 201
  end

end
