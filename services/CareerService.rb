require 'sinatra/base'

class CareerService

    self.create_career(nameCareer)
        career = Career.new(name: nameCareer)
        unless career.valid?
            #Creamos una excepcion... career.errors muestra el mensaje definido en validate (model)
            raise ValidationModelError.new("Los datos de career son incorrectos", career.errors)
            if career.save
                [201, {'Location' => "career/#{career.id}"}, 'CREATED']
            else
                [500, {}, 'Internal Server Error']
            end
        end
    end
end