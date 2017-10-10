require 'sinatra'
get '/' do
  erb 'Hi there, Visitor <%= 2 + 2 %>!'
end

get '/random-cat' do

  @coder_name = "My name is #{%w[Hugo Pablo].sample}!"
  @cat_name = "Hey this is a sample from an array  #{%w[Amigo Oscar Viking].sample}"
  weekday = Time.now.strftime('%A')
  @weekday = "Today is a #{weekday}!"
  erb(:index)
end

get '/named-cat' do
p  params
  @coder_name = "#{params[:name]}"
  #@coder_name = "My name is #{%w[Hugo Pablo].sample}!"
  @cat_name = "Hey this is a sample from an array  #{%w[Amigo Oscar Viking].sample}"
  weekday = Time.now.strftime('%A')
  @weekday = "Today is a #{weekday}!"
  erb(:index)
end
