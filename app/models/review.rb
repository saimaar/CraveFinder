class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :rating, :inclusion => { :in => 0..10 }
end
