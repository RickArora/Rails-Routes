class Artwork < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true 
    validates :artist_id, presence: true, uniqueness: {scope: :title, message: "each title must be unique for an artist"}
    belongs_to(:artist, {
        primary_key: :id,
        foreign_key: :artist_id, 
        class_name: :User
    })

    has_many(:shared_viewers, {
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare
    })

    has_many :User, through: :shared_viewers
end
