require 'sinatra/base'

class CareerController < Sinatra::Base

    post "/careers" do
        #Se obtiene dato
        name_career = params[:name]
        #Se invoca modelo para implementar logica y captura excepcion    
        #begin
        CareerService.create_career(name_career)
        #rescue ValidationModelError => e
        #    return erb :errorView, :locals => e.errors
        #end
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