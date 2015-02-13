require 'sinatra'
require 'sinatra/reloader'
also_reload './lib/**/*.rb'
require './lib/word_count.rb'
require 'pry'


get '/' do
  erb :index
end

get '/form' do
  erb :form
end

post '/results' do
  @sentence = params[:sentence]
  @word_to_check = params[:word_to_check]
  @results = @sentence.word_count(@word_to_check)
  erb :results
end
