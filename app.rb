# frozen_string_literal: true

require './models/init'
require './controllers/CareerController.rb'
require './controllers/PostController.rb'
require './controllers/ResponseController.rb'
require './controllers/SurveyCareerController.rb'
require './controllers/SurveyController.rb'


# Class that defines methods to interact with the server
class App < Sinatra::Base
  
  use CareerController
  use PostController
  use ResponseController
  use SurveyCareerController
  use SurveyController

  get '/' do
    erb :landing
  end

  post '/init' do
    redirect :/
  end
end

