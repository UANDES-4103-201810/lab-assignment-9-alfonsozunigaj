class Actor < ApplicationRecord
  has_many :actor_movies
  has_many :movies, :through => :actor_movies

  def label_for_select
    "#{first_name} #{last_name}"
  end
end
