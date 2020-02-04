class UsersController < ApplicationController

  before_action :authorize, only: [:show, :destroy]

  def new
    # binding.pry
    # if params[:errors]
    #   @errors = params[:errors]
    # end
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      session[:user_id] = @user.id
      redirect_to "/"
    else
      # binding.pry
      flash[:alert] = "There was a problem signing up."
      render :new
      # params[:errors] = @user.errors
    end
  end

  def show
    @user = User.find(session[:user_id])
    render :show
  end

  def destroy
    @user = User.find(session[:user_id])
    @user.destroy
    session[:user_id] = nil
    redirect_to posts_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
