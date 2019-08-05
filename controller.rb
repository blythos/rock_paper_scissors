require('sinatra')
require('sinatra/contrib/all')
require_relative("./models/Game.rb") if development?
also_reload("./models*")

get "/" do
  choices = ["rock", "paper", "scissors"]
  @random_selection = choices[rand(0...3)]
  erb(:home)
end

get "/game/:hand1/:hand2" do
  game = Game.new(params[:hand1], params[:hand2])
  @result = game.play()
  erb(:result)
end
