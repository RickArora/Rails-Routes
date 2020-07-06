class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_many(:artist, {
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy
    })
    has_many(:shared_artworks, {
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy
    })
    has_many :artwork, through: :shared_artworks
end

