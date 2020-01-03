
class Restaurant < ApplicationRecord
  validates :name, :presence => true
  validates :contact, :presence => true
  validates :email, :presence => true
  validates :image, :presence => true
  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews
  belongs_to :category
  belongs_to :location

  def self.search(params)
    # byebug
    restaurants = Restaurant.where(category_id: params[:category].to_i, location_id: params[:location].to_i)
    restaurants = restaurants.where("name like ?", "#{params[:search]}") if params[:search].present?
    # restaurants = restaurant.where(location_id: params[:location].to_i) if params[:location].present?
    restaurants

  end

end
