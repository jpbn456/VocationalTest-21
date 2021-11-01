require File.expand_path '../test_helper.rb', __dir__

class SurveyTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  def test_survey_must_has_username
    # Arrange
    survey1 = Survey.new
    survey2 = Survey.new
    survey3 = Survey.new

    # Act
    survey1.username = nil
    survey2.username = ''
    survey3.username = 'Lucho'

    # Assert
    assert_equal survey1.valid?, false
    assert_equal survey2.valid?, false
    assert_equal survey3.valid?, true
  end

  def test_survey_has_a_career
    # Arrange
    career = Career.create(name: 'Carrera6')

    # Act
    survey1 = Survey.create(username: 'Usuario1', career_id: career.id)
    survey2 = Survey.create(username: 'Usuario2', career_id: career.id)

    # Assert
    assert_equal career.surveys.count, 2
  end
end
