require 'sinatra'
require_relative 'lib/Questions.rb'
get '/' do
  erb :welcome
end

get '/questions' do
@questions =Question.new
@random = [*0..4].sample
@q=@@questions.list[@random]
#@questions.reply(@q,resp)

  erb :questions
end
post '/:reply' do
  quest=params[:pregunta]
  resp=params[:respuesta]
  @questions.reply(quest,resp)
  #erb :questions

  erb :questions
end

get '/:question/:answer' do
  @next = @questions.reply params[:question,:answer]
  erb :questions
end
