require 'sinatra'
require_relative 'lib/Questions.rb'

get '/' do
  erb :welcome
end

get '/questions' do
@questions = Question.new
@questions.list
@random = [*0..4].sample

  erb :questions
end
