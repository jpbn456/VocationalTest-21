require './models/response.rb'
require './excepcion/ValidationModelError.rb'
class ResponseService

    def self.create_response(question, survey, choice)
        response = Response.new(question_id: question, survey_id: survey, choice_id: choice)
        unless response.valid?
            raise ValidationModelError.new("Los datos del response son incorrectos", response.errors)
        end
        response.save
        return response
    end
end