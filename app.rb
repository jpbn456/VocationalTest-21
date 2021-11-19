# frozen_string_literal: true

require './models/init'
require './controllers/CareerController.rb'
require './controllers/PostController.rb'

# Class that defines methods to interact with the server
class App < Sinatra::Base
  
  use CareerController
  use PostController

  get '/' do
    erb :landing
  end

  post '/inicio' do
    erb :surveys_index
  end

  post '/init' do
    redirect :/
  end

  post '/careers_info_survey' do
    erb :surveys_careers
  end

  post '/info_surveys' do
    redirect :surveys
  end

  post '/surveys_careers' do
    @fecha_ini = params[:FechaIni]
    @fecha_fin = params[:FechaFin]
    @career = Career.find(id: params[:career_id])
    @count = Survey.all.filter do |x|
      x.career_id == @career.id && x.created_at.strftime('%Y-%m-%d') >= @fecha_ini &&
        x.created_at.strftime('%Y-%m-%d') <= @fecha_fin
    end.count
    erb :quantity_careers
  end

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

  get '/surveys' do
    @surveys = Survey.all
    erb :info_surveys
  end

  post '/responses' do
    choice_relevant_set = Choice.where(relevant: false).all
    @survey = Survey.find(id: params[:survey_id])
    params[:question_id].each do |question|
      response = Response.new(question_id: question, survey_id: @survey.id, choice_id: params[question])
      response.save
      choice_param = Choice.find(id: params[question])
      choice_relevant_set.delete choice_param if choice_param.relevant == false
    end
    @user = @survey.username
    if choice_relevant_set.empty?
      erb :end_fail_index
    else
      careers_points = calculate_career_points(@survey)
    end
    career_id = careers_points.key(careers_points.values.max)
    @career = Career.find(id: career_id).name
    @survey.update(career_id: career_id) # Actualizo valor de relación entre el usuario y la carrera ganadora
    @survey.responses.map(&:destroy) # se elimina todas las respuestas que el usuario envio..
    erb :end_index
  end

  def calculate_career_points(survey)
    points_careers = {}
    Career.all.each do |career|
      points_careers[career.id] = 0
    end
    survey.responses.each do |response|
      Outcome.all.each do |outcome|
        points_careers[outcome.career_id] += 1 if response.choice_id == outcome.choice_id
      end
    end
    points_careers
  end
end
