class Movie < ApplicationRecord
  belongs_to :director
  has_one :address
  has_many :actors
  has_many :categories
  accepts_nested_attributes_for :address
end
