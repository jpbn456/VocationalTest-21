# frozen_string_literal: true

# Define the associations with each class
class Question < Sequel::Model
  one_to_many :choices
  one_to_many :responses
end
