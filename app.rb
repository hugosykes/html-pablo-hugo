require 'sinatra'
get '/' do

erb "Hi there, Visitor <%= 2 + 2 %>!"

end

get '/cat' do
erb(:index)

end
