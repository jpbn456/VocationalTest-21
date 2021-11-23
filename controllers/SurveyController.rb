require 'sinatra/base'
require './services/SurveyService.rb'
require './excepcion/ValidationModelError.rb'
#require './models/question.rb'
#require './models/survey.rb'

class SurveyController < Sinatra::Base

    configure :development, :production do
        set :views, settings.root + '/../views'
    end

    get '/register' do
        erb :error_view
    end

    post '/surveys' do
        user_name = params[:username]
        begin
        @survey = SurveyService.create_survey(user_name)
        rescue ValidationModelError => e
           return erb :error_view, :locals => {:errorMessage => e.message}
        end
        @questions = Question.all
        erb :questions_index
    end

    get "/surveys" do
        @surveys = Survey.all
        erb :info_surveys
    end

    post '/inicio' do
        erb :surveys_index
    end

    post '/info_surveys' do
        redirect :surveys
    end
end