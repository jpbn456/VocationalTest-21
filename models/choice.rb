class Choice < Sequel::Model

	one_to_many :outcomes
    many_to_one :question
    one_to_one  :response

	plugin :validation_helpers 
	def validate
		super 
			validates_presence :text
	end 
end