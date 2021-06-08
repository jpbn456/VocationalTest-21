class Outcome < Sequel::Model
	
	many_to_one :career
	many_to_one :choice

	def validate
		super
			errors.add(:career_id, 'career_id can not be nil') if career_id.nil?
		 	errors.add(:choices_id, 'choice_id can not be nil') if choices_id.nil?
	end
end
