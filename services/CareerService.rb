require './models/career.rb'
require './excepcion/ValidationModelError.rb'

class CareerService
    def self.create_career(nameCareer)
        career = Career.new(name: nameCareer)
        unless career.valid?
            raise ValidationModelError.new("Los datos de career son incorrectos", career.errors)
        end
        if career.save
            [201, {'Location' => "career/#{career.id}"}, 'CREATED']
        else
            [500, {}, 'Internal Server Error']
        end
    end
end