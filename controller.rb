require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("./models/game")

get '/game/:player1/:player2' do
  game_result = Game.new(params[:player1], params[:player2])
  @result_of_game = game_result.winner().upcase()
  erb(:result)
end

get '/' do
  erb(:home)
end
