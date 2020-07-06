class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all 
    render json: @artworks
  end
  
  def show 
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def create 
    artwork = Artwork.new(artwork_params)
    if artwork.save
        render json: artwork 
    else 
        render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    artwork = Artwork.find(params[:id])
    artwork.update(artwork_params)
    render json: artwork
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork
  end

  private 
  def artwork_params
    params[:artwork].permit(:title, :image_url)
  end
end