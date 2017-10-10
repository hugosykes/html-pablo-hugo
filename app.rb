require 'sinatra'
get '/' do

  'Hello world!'

end

get '/cat' do
erb(:index)

end
