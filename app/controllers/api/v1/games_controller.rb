require 'pry'

class Api::V1::GamesController < ApplicationController
  @@cards = []

  def create_timeline 
    HistoryAPI.process_request(game_params[:startDate], game_params[:endDate])
    @cards = Card.all
    puts @cards
    render json: @cards, status: :created
  end 

  def game_params
    params.require(:game).permit(:startDate, :endDate)
  end
end 