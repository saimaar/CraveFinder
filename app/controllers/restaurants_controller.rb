class RestaurantsController < ApplicationController
  before_action :authentication_required
  skip_before_action :authentication_required, only: [:index, :create, :new]

  def index
    #if you are not logged in, you can't see this go back to login page
    @restaurants = Restaurant.all

    # @user = User.new
    # render :new_user_path
  end

  def show
    @restaurants = Restaurant.all
    @restaurant = Restaurant.find(params[:id])
  end

  def search
    @restaurants = Restaurant.search(params)
  end


  def new
    @restaurant = Restaurant.new
    @errors = flash[:error]
  end

  def create
    @restaurant= Restaurant.create(restaurant_params(:name, :image, :contact, :email, :category_id,
    :location_id))
      if @restaurant.valid?
        redirect_to restaurant_path(@restaurant)
      else
        flash[:error] = @restaurant.errors.full_messages
        redirect_to new_restaurant_path
      end
end


  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params(:name, :image, :contact, :email, :category_id, :location_id))
    redirect_to restaurant_path(@restaurant)
  end



  def destroy
    @restaurant = Restaurant.find(params[:id]).destroy
    redirect_to root_path

  end


  private

  def restaurant_params(*args)
    params.require(:restaurant).permit(*args)
  end
end
