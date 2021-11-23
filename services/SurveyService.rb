require './models/survey.rb'
require './models/ValidationModelError.rb'

class SurveyService

    self.create_survey(user_name)
        @survey = Survey.new(username: user_name)
        unless survey.valid?
            raise ValidationModelError.new("Los datos del survey son incorrectos", survey.errors)
            if @survey.save
                [201, { 'Location' => "surveys/#{@survey.id}" }, 'User created sucesfully'] 
            else
                [500, {}, 'Internal Server Error']
            end
        end
    end
end