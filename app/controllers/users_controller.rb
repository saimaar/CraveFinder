class UsersController < ApplicationController
  def new
    @user = User.new
    @errors = flash[:error]

  end

  def create #signup
    # @user = User.new
    # @user.email = params[:user][:email]
    @user = User.create(user_params(:name, :email, :picture, :bio, :password, :password_confirmation))
    if @user.valid?
      session[:user_id] = @user.id
    redirect_to root_path
  else
   flash[:error] = @user.errors.full_messages
    redirect_to :new #show them the form
  end
  end

  def show #user profile
    @user = User.find(params[:id])
    @user_reviews =@user.user_reviews
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params(:password, :password_confirmation, :bio, :picture))
    redirect_to user_path(@user)
  end

  def destroy
      @user = User.find(params[:id])
      @user.destroy
      reset_session #this will reset all the cookies
      redirect_to root_path
  end



  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end
end
