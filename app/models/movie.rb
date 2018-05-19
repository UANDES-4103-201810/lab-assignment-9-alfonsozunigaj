class Movie < ApplicationRecord
  belongs_to :director
  has_one :address
  has_many :actor_movies
  has_many :movies, :through => :actor_movies
  has_many :categories
  accepts_nested_attributes_for :address, allow_destroy: true
end
