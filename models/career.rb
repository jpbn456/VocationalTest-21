# frozen_string_literal: true

# Define the associations with each class
class Career < Sequel::Model
  one_to_many :surveys
  one_to_many :outcomes

  # plugin :validation_helpers
  def validate
    super errors.add(:name, name: 'username can not be nil or empty') if name.nil? || name.empty?
    # super validates_presence :name
  end
end
