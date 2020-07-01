    class ArtworkShare < ApplicationRecord
        validates :artist_id, :viewer_id, presence: true, uniqueness: true
        belongs_to(:viewer,{
            primary_key: :id,
            foreign_key: :artist_id,
            class_name: :artwork
        })

        belongs_to(:viewer, {
            primary_key: :id,
            foreign_key: :artist_id,
            class_name: :User
        })
    end