# frozen_string_literal: true

require './models/init'
require './controllers/CareerController.rb'
require './controllers/PostController.rb'
require './controllers/ResponseController.rb'


# Class that defines methods to interact with the server
class App < Sinatra::Base
  
  use CareerController
  use PostController
  use ResponseController
 
  get '/' do
    erb :landing
  end

  # redireciona a /
  post '/' do
    redirect :/
  end

  # Creation inicio
  post '/inicio' do
    erb :surveys_index
  end

  post '/init' do
    erb :landing
  end

  # Creation info_surveys
  post '/info_surveys' do
    redirect :surveys
  end

  post '/careers_info_survey' do
    erb :surveys_careers
  end

 post '/surveys_careers'do
    @fecha_ini = params[:FechaIni]
    @fecha_fin = params[:FechaFin]
    @career = Career.find(id: params[:career_id])
    @count = Survey.all.filter{|x| x.career_id == @career.id && x.created_at.strftime('%Y-%m-%d') >=  @fecha_ini && x.created_at.strftime('%Y-%m-%d') <= @fecha_fin}.count()
    erb :quantity_careers
  end

  # Creation surveys
  post '/surveys' do
    @survey = Survey.new(username: params[:username])
    if @survey.save
      [201, { 'Location' => "surveys/#{@survey.id}" }, 'User created sucesfully']
      @questions = Question.all
      erb :questions_index
    else
      [500, {}, 'Internal Server Error']
    end
  end

  # Get to shows
  get '/surveys' do
    @surveys = Survey.all
    erb :info_surveys
  end

end
