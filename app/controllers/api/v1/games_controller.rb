require 'pry'

class Api::V1::GamesController < ApplicationController
  # def show 
  #   @user = User.find_by(id: params[:id])
  #   render json: @user, status: :ok
  # end 

  # def create 
  #   @newUser = User.new(user_params)
  #   puts user_params
  #   if @newUser.valid?
  #     @newUser.save()
  #     render json: @newUser, status: :created
  #   else 
  #     puts "already exists"
  #     @user = User.find_by(username: @newUser.username)
  #     render json: @user, status: :bad_request
  #   end 
  # end 

  # def destroy
  #   @user = User.find_by(id: params[:id])
  #   @user.destroy
  #   render body: nil, status: :no_content
  # end

  def game_params
    params.require(:game)
  end
end 