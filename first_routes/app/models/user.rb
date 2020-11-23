class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks,
    foreign_key: :artist_id,
    dependent: :destroy
  has_many :artwork_shares,
    foreign_key: :viewer_id,
    dependent: :destroy
end