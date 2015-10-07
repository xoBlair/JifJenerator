require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
# This is only for debugging purposes. You can add 'binding.pry' to do breakpoint debugging anywhere in this file.
require 'pry'



get '/' do
  erb :index
end


get '/search' do
gif_search = params[:confirm]
response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{gif_search}&api_key=dc6zaTOxFJmzC")
@gif = response['data'].sample
erb :index
end




  # Write the code here to get an image from Giphy for the search term and send it to the view
  # Think about what to do in edge cases like if the search is empty, or Giphy returns no results

  