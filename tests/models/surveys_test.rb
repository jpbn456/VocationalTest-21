require File.expand_path '../../test_helper.rb', __FILE__

class SurveyTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  def test_survey_must_has_username
    # Arrange
    survey = Survey.new
    # Act
    survey.username = nil
   
    # Assert
    assert_equal survey.valid?, false
  end

  
end