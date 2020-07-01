class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_many(:artist, {
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User
    })
    has_many(:ArtworkShare, {
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare
    })
    has_many :artworks, through: :ArtworkShare
end

