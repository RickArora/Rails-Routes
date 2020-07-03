# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'Ricky')
User.create(username: 'Sharan')
User.create(username: 'Madhu')
User.create(username: 'Luke')
Artwork.create(title: 'ArtImage1', image_url: 'fake_url_id1', artist_id: 1)
Artwork.create(title: 'ArtImage2', image_url: 'fake_url_new_id1', artist_id: 1)
Artwork.create(title: 'ArtImage3', image_url: 'fake_url_new_id1', artist_id: 1)

Artwork.create(title: 'ArtImage1', image_url: 'fake_url_id2', artist_id: 2)
Artwork.create(title: 'ArtImage2', image_url: 'fake_url_new_id2', artist_id: 2)
Artwork.create(title: 'ArtImage3', image_url: 'fake_url_new_id2', artist_id: 2)

ArtworkShare.create(artwork: Artwork.first, viewer: User.first, viewer_id: 1, artwork_id: 1)
ArtworkShare.create(artwork: Artwork.first, viewer: User.second, viewer_id: 2, artwork_id: 1)
ArtworkShare.create(artwork: Artwork.first, viewer: User.third, viewer_id: 3, artwork_id: 1)
ArtworkShare.create(artwork: Artwork.second, viewer: User.first, viewer_id: 1, artwork_id: 2)
ArtworkShare.create(artwork: Artwork.second, viewer: User.second, viewer_id: 2, artwork_id: 2)
ArtworkShare.create(artwork: Artwork.second, viewer: User.third, viewer_id: 3, artwork_id: 1)
ArtworkShare.create(artwork: Artwork.third, viewer: User.fourth, viewer_id: 4, artwork_id: 4)









