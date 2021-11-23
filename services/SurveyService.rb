require './models/survey.rb'
require './excepcion/ValidationModelError.rb'

class SurveyService

    def self.create_survey(user_name)
        survey = Survey.new(username: user_name)
        unless survey.valid?
            raise ValidationModelError.new("Los datos del survey son incorrectos")
            if survey.save
              [201, { 'Location' => "surveys/#{survey.id}" }, 'User created sucesfully'] 
            else
                [500, {}, 'Internal Server Error']
            end
        end
        return survey
    end
end