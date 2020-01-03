class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true
  validates :name, :presence => true
  validates :password, :presence => true
  has_many :reviews, dependent: :destroy
  has_many :restaurants, through: :reviews


  def user_reviews
  reviews =  self.reviews.sort_by{|review|
    review.created_at
  }
  end

end #end of class
