require 'sinatra/base'

class PostController < Sinatra::Base
    
    configure :development, :production do
        set :views, settings.root + '/../views'
     end

    post '/posts' do
        request.body.rewind # in case someone already read it
        data = JSON.parse request.body.read
        PostService.create_post(data)
    end

    get '/posts' do
        p = Post.where(id: 1).last
        p.description
     end
end