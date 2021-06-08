class Choice < Sequel::Model

	one_to_many :outcomes
    many_to_one :question
    one_to_one  :response

    #def validate
	#	super errors.add(:text, 'text can not be nil or empty') if !text || text.empty?
	#end   
	plugin :validation_helpers 
	def validate
		super 
			validates_presence :text
	end 
end