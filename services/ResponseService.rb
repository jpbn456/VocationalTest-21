class ResponseService

    self.create_response(question, survey, choice)
        response = Response.new(question_id: question, survey_id: survey, choice_id: choice)
        unless response.valid?
            raise ValidationModelError.new("Los datos del response son incorrectos", response.errors)
        response.save
        return response
    end
end