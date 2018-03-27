require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("./models/game")

get '/game/:player1/:player2' do
  game_result = Game.new(params[:player1], params[:player2])
  return game_result.winner()
end
