class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(restaurant: @restaurant)
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = current_user.reviews.build(review_params(:rating, :comment))
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@review.restaurant)
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params(:rating, :comment))
    redirect_to user_path(@review.user)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_path(@review.user)
  end





  private

  def review_params(*args)
    params.require(:review).permit(*args)
  end
end

# <p><%= f.collection_select :restaurant_id, Restaurant.all, :id, :name%></p>
# <p><%= f.label :user %></p>
# <p><%= f.collection_select :user_id, User.all, :id, :name%></p>
