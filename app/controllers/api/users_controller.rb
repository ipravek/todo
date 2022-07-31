class Api::UsersController < ApplicationController

  before_action :authorized, only: [:auto_login]

  def create
    @user = User.new(user_params)
    if @user.save
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: @user.errors.full_messages}
    end
  end

  def login
    @user = User.find_by_username user_params[:username]
    if @user && @user.authenticate(user_params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end


  def auto_login
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
