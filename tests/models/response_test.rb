require File.expand_path '../../test_helper.rb', __FILE__

class ResponseTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  
  def test_response_may_has_question_choice_and_survey
    # Arrange
    response1 = Response.new
    response2 = Response.new
    response3 = Response.new
    question = Question.create(:name => 'Question', :description => 'description', :number => 1)
    choice = Choice.create(:text => 'choice')
    survey = Survey.create(:username => "User")

    response1.question_id = nil
    response1.choice_id   = ' '
    response1.survey_id   = nil
    response2.question_id = 1
    response2.choice_id = 1
    response2.survey_id = 1
    # Assert
    assert_equal(response1.valid?, false)
    assert_equal(response2.valid?, true)
    assert_equal(response3.valid?, false)

  end
end