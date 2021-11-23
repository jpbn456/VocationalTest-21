require 'sinatra/base'
require './services/PostService.rb'

class PostController < Sinatra::Base
    
    post '/posts' do
        request.body.rewind 
        data = JSON.parse request.body.read
        PostService.create_post(data)
    end

    get '/posts' do
        p = Post.where(id: 1).last
        p.description
    end
end