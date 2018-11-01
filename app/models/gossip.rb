class Gossip < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user, optional:true
  has_and_belongs_to_many :tags
  has_many :comments
  has_many :likes
=======
  belongs_to :user
  has_and_belongs_to_many :tags
  has_many :comments
  has_many :likes, as: :likeable
>>>>>>> 6b28e9f3d1ae41a2f5d092f49dba7f416a17d98d
end
