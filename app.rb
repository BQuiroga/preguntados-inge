require 'sinatra'
require_relative 'lib/Questions.rb'

  @@questions=Question.new
  get '/' do
    erb :welcome
  end
  get '/questions' do
    @random = [*0..4].sample
    @q=@@questions.list[@random]
    #@questions.reply(@q,resp)
    erb :questions
  end
  post '/reply' do
    @resp=params[:respuesta]
    @quest=params[:pregunta]
    @@questions.reply(@quest,@resp)
    erb :confirm
  end
  get '/back' do
    erb :questions
  end

  erb :questions
end
