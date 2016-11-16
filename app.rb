require 'sinatra'
require_relative 'lib/Game.rb'

  get '/' do
    @@g=Game.new
    erb :welcome
  end
  get '/questions' do
    @random = [*0..4].sample
    @q=@@g.questions[@random]
    #@questions.reply(@q,resp)
    erb :questions
  end
  post '/reply' do
    @resp=params[:respuesta]
    @quest=params[:pregunta]
    erb :confirm
  end
  get '/back' do
    erb :questions
  end

  get '/categories' do
  erb :categories
end
