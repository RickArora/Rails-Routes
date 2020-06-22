class Artwork < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true 
    validates :artist_id, presence: true, uniqueness: {scope: :title, message: "each title must be unique for an artist"}
    belogs_to(:user, {
        primary_key: :id,
        foreign_key: :artist_id, 
        class_name: :User
    })
end
