class SessionsController < ApplicationController

  def new
    #render form for new
  end

  def create
    # raise params.inspect
    @user = User.find_by(email: params[:email])
    @user = @user.try(:authenticate, params[:password])

    # @user.authenticate(params[:password])
    # .try(:authenticate, params[:password])
    if @user

      session[:user_id] = @user.id
      redirect_to restaurants_path
    else
      #else needs a flash error message
      # do i need a model for session to have validations?
      redirect_to login_path
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
