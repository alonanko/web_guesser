require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)

def check_guess(guess)
  guess = guess.to_i
  if guess > NUMBER
    message = "too high"
  elsif guess < NUMBER
    message = "too low"
  else
    message = "The Secrect Number is #{NUMBER}"
  end
  return message
end

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:message => message}
end