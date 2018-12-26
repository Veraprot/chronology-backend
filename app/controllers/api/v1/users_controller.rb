require 'pry'

class Api::V1::UsersController < ApplicationController
  def index 
    @users = User.all
    render json: @users, status: :ok
  end

  def show 
    @user = User.find_by(id: params[:id])
    render json: @user, status: :ok
  end 

  def create 
    @newUser = User.new(user_params)
    puts user_params
    if @newUser.valid?
      @newUser.save()
      render json: @newUser, status: :created
    else 
      puts "already exists"
      @user = User.find_by(username: @newUser.username)
      render json: @user, status: :bad_request
    end 
  end 

  def update 
    @user = User.find_by(id: params[:id])
    if @user.update(user_params(:username))
      render json: @user, status: :ok
    else
      render json: @user, status: :bad_request
    end
  end 

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render body: nil, status: :no_content
  end


  def user_params
    params.require(:user).permit(:username)
  end
end 