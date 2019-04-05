require 'http'
require 'sinatra'
require 'sinatra/json'
require 'erb'
require 'unsplash'
require_relative './models/model.rb'
# require_relative '../views/hastyphoto.erb'

# model - manages the data / packages the data
# controller - fetches the data from the API

Unsplash.configure do |config|
  config.application_access_key = "fa86802486e5bb5543195a47c12630627a3401c4b17b13a92b4fcbeadeccc3d4"
  config.application_secret = "4952ce268cfd7f260180fbbaee807af6df738837b61fbd796f1899b0a674206a"
  config.application_redirect_uri = "https://your-application.com/oauth/callback"
  config.utm_source = "photosplasher"
end


get '/photosplasher' do
  # photos = HTTP.auth("Client-ID fa86802486e5bb5543195a47c12630627a3401c4b17b13a92b4fcbeadeccc3d4").get('https://api.unsplash.com/photos').to_s
  # json_photos = JSON.parse(photos)
  # @photo_array = PhotoArray.new(json_photos).create_array
  photos = Unsplash::Photo.search("cats")

  @photos = photos.map { |photo|
    photo['urls']['small']
  }

  erb :photosplasher
end

get '/photosplasher/search' do 
  #receive params
  #perform search on params
  #produce photos array from params
  #render

  photos = Unsplash::Photo.search(params['query'])

  @photos = photos.map { |photo|
    photo['urls']['small']
  }

  erb :results

end

