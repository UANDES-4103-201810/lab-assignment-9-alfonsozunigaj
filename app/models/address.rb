class Address < ApplicationRecord
  belongs_to :movie # Because we are creating a new address everytime we create a movie. So, since we are not going
  # to be reusing any address previously created, I'll just leave it as a belongs_to
end
