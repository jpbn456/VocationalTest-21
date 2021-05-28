class Career < Sequel::Model

	one_to_many :surveys
    one_to_many :outcomes
    def validate
		super errors.add(:username, :name => 'username can not be nil or empty') if username.nil?||username.empty?
	end

end