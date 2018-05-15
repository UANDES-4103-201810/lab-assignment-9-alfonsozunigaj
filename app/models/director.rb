class Director < ApplicationRecord
  has_many :movies

  def label_for_select
    "#{first_name} #{last_name}"
  end
end
