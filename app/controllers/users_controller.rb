class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:displayname, :email, :password, :password_confirmation)
    end


end
