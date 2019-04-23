require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/RPSgame.rb')

also_reload('./models/*')

get '/welcome' do
  erb(:welcome)
end

get '/check_win/:hand1/:hand2' do
  hand1 = params[:hand1].to_s
  hand2 = params[:hand2].to_s
  @on_three = RPSGame.check_win(hand1, hand2)
  erb(:result)
end
