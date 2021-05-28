class Question < Sequel::Model

	one_to_many :choices
    one_to_many :responses
    
    def validate
		super
		errors.add(:name, 'Cannot be empty') if !name || name.empty?
		errors.add(:description, 'Cannot be empty') if !description || description.empty?
		errors.add(:number, 'Cannot be null') if !number
		errors.add(:type, 'Cannot be empty') if !type || type.empty?
    end
end