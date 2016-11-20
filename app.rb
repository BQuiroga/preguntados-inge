require 'sinatra'
require_relative 'lib/Game.rb'

  get '/' do
    @@g=Game.new
    erb :welcome
  end

  get '/categories' do
    erb :categories
  end

  get '/sports' do
    @random = [*0..2].sample
    @c = "Deportes"
    @q = @@g.bank.getQuestionSport(@random)
    @a = @@g.posibleAnswers(@c, @q)
    erb :sports
  end

  post '/reply_sports' do
    @resp=params[:respuesta]
    @quest=params[:pregunta]
    erb :confirm
  end

  
