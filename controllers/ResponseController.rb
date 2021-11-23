require 'sinatra/base'
require './excepcion/ValidationModelError.rb'
require './services/ResponseService.rb'
#require './models/choice.rb'
#require './models/survey.rb'
#require './models/career.rb'
#require './models/outcome.rb'

class ResponseController < Sinatra::Base

  configure :development, :production do
    set :views, settings.root + '/../views'
  end

  post '/responses' do
    choice_relevant_set = Choice.where(relevant: false).all
    @survey = Survey.find(id: params[:survey_id])
    params[:question_id].each do |question|
      choice = params[question]
      survey = @survey.id
      begin
      ResponseService.create_response(question, survey, choice)
        rescue ValidationModelError => e
          return erb :error_view, :locals => e.errors
      end
      choice_param = Choice.find(id: params[question])
      if choice_param.relevant == false
        choice_relevant_set.delete choice_param
      end  
    end 
        
    @user = @survey.username
    if choice_relevant_set.empty?
      erb :end_fail_index  
    else
      careers_points = calculate_career_points(@survey)
    end
    careerId = calculate_career_point_max(careers_points)
    @career = Career.find(id: careerId).name
    @survey.update(career_id: careerId) #Actualizo valor de relación entre el usuario y la carrera ganadora
    @survey.responses.map {|c|c.destroy } #se elimina todas las respuestas que el usuario envio..
    erb :end_index
  end 
        
  def calculate_career_points(survey) 
    pointsCareers = {}
    Career.all.each do |career| 
      pointsCareers[career.id] = 0
    end
    survey.responses.each do |response|
      Outcome.all.each do |outcome|
        if (response.choice_id == outcome.choice_id)
          pointsCareers[outcome.career_id] += 1
        end
      end
    end
    return pointsCareers
  end 

  def calculate_career_point_max(careers_points)
    return careers_points.key(careers_points.values().max())
  end
end