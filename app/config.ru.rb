require 'sinatra'

get '/' do
  erb :welcome
end

get '/questions' do
  erb :questions
end
