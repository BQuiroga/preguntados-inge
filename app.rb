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

  get '/entertainment' do
    @random = [*0..2].sample
    @c = "Entretenimiento"
    @q = @@g.bank.getQuestionEntertaiment(@random)
    @a = @@g.posibleAnswers(@c, @q)
    erb :entertainment
  end

  get '/science' do
    @random = [*0..2].sample
    @c = "Ciencia"
    @q = @@g.bank.getQuestionScience(@random)
    @a = @@g.posibleAnswers(@c, @q)
    erb :science
  end


  post '/reply' do
    @cat=params[:categoria]
    @resp=params[:respuesta]
    @quest=params[:pregunta]
    erb :confirm
  end
