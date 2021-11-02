# frozen_string_literal: true

require File.expand_path '../test_helper.rb', __dir__

# Unit Test suit for Career Model
class CareerTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase

  def test_career_has_many_surveys
    # Arrange

    career = Career.create(name: 'Veterinaria')

    # Act
    Survey.create(username: 'U1', career_id: career.id)
    Survey.create(username: 'U2', career_id: career.id)
    Survey.create(username: 'U3', career_id: career.id)
    # Assert
    assert_equal career.surveys.count, 3
  end

  def test_career_must_has_name
    # Arrange
    career1 = Career.new
    career2 = Career.new
    career3 = Career.new

    # Act
    career1.name = 'Abogacia'
    career2.name = nil
    career3.name = ''

    # Assert
    assert_equal(career1.valid?, true)
    assert_equal(career2.valid?, false)
    assert_equal(career3.valid?, false)
  end

  def test_career_has_many_outcomes
    # Arrange
    career = Career.create(name: 'Sistemas')

    # Act
    Outcome.create(career_id: career.id, choice_id: 1)
    Outcome.create(career_id: career.id, choice_id: 2)

    # Assert
    assert_equal career.outcomes.count, 2
  end
end
