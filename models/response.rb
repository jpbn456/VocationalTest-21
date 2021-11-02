# frozen_string_literal: true

# Define the associations with each class
class Response < Sequel::Model
  many_to_one :survey
  many_to_one :question
  one_to_one  :choice

  def validate
    super
    errors.add(:survey_id, 'Can not be nil') if survey_id.nil?
    errors.add(:question_id, 'Can not be nil') if question_id.nil?
    errors.add(:choice_id, 'Can not be nil') if choice_id.nil?
  end
end
