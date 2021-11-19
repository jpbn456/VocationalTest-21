require 'sinatra/base'

class CareerController < Sinatra::Base
    
    configure :development, :production do
        set :views, settings.root + '/../views'
     end

    post "/careers" do
        name_career = params[:name]
        begin
        CareerService.create_career(name_career)
        rescue ValidationModelError => e
            return erb :error_view, :locals => e.errors
        end
    end

    get "/careers/:id" do
        @career = Career.find(id: params[:id])
        @career_id = @career.id
        erb :info_careers
    end

    post '/info_careers' do
        erb :careers_index
    end

end