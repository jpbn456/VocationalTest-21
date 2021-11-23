require 'sinatra/base'
require './services/SurveyService.rb'
require './models/survey.rb'
require './models/career.rb'


class SurveyCareerController < Sinatra::Base

    post '/surveys_careers'do
        @fecha_ini = params[:FechaIni]
        @fecha_fin = params[:FechaFin]
        @career = Career.find(id: params[:career_id])
        @count = Survey.all.filter{|x| x.career_id == @career.id && x.created_at.strftime('%Y-%m-%d') >=  @fecha_ini && x.created_at.strftime('%Y-%m-%d') <= @fecha_fin}.count()
        erb :quantity_careers
    end

    post '/careers_info_survey' do
        erb :surveys_careers
    end
end