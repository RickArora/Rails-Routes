    class ArtworkShare < ApplicationRecord
        validates :artwork_id, :viewer_id, presence: true, uniqueness: true
        belongs_to(:artwork,{
            primary_key: :id,
            foreign_key: :artwork_id,
            class_name: :Artwork
        })

        belongs_to(:viewer, {
            primary_key: :id,
            foreign_key: :artist_id,
            class_name: :User
        })
    end