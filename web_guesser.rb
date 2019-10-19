require 'sinatra'
require 'sinatra/reloader'

num = rand(100)
get '/' do
  "The Secret NumBBer is #{num}"
end
