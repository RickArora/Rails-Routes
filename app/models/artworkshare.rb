class Artworkshare < ApplicationRecord
    validates :artist_id, :viewer_id, presence: true, uniqueness: true
    belongs_to(:viewer,{
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artist
    })

    belongs_to(:viewer, {
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User
    })
end
