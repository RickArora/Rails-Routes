class ArtworkshareController < ApplicationController
    def create
        artworkshare = ArtworkShare.new(artworkshare_params)
        if artworkshare.save
            render json: artwork
        else
            render json: user.errors.full_messages, status: :unprocessable_entity 
        end
    end

    def destroy 
        artworkshare = ArtworkShare.find(params[:id])
        artworkshare.destroy 
        render json: artworkshare
    end

    private 
    def artworkshare_params 
        params[:artwork_shares].permit(:viewer_id, :artwork_id)
    end
end