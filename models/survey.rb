class Survey < Sequel::Model
	
	many_to_one :career
	one_to_many :responses
	def validate
		super 
		errors.add(:username, 'username can not be nil or empty') if !username || username.empty?

	end
		
end
