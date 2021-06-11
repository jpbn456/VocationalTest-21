class Choice < Sequel::Model

    one_to_many :outcomes
    many_to_one :question
    one_to_one  :response

<<<<<<< HEAD
	plugin :validation_helpers 
	def validate
		super 
			validates_presence :text
	end 
end
=======
    plugin :validation_helpers 
    def validate
	super 
		validates_presence :text
    end  
	
end
>>>>>>> 5c1cce505bda316bf35d8786b6f1ccd73181d18b
