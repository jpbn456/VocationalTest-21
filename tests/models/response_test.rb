require File.expand_path '../test_helper.rb', __dir__

class ResponseTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase

  def test_response_may_has_question_choice_and_survey
    # Arrange
    response1 = Response.new
    response2 = Response.new
    # Act
    response1.question_id = nil
    response1.choice_id = nil
    response1.survey_id = nil

    response2.question_id = 1
    response2.choice_id = 1
    response2.survey_id = 1
    # Assert
    assert_equal(response1.valid?, false)
    assert_equal(response2.valid?, true)
  end

  def test_response_has_choice_survey_and_question
    # Arrange
    question = Question.create(name: 'Nombre', number: 1, description: 'Descrip', type: 'Personal')

    # Act
    choice1 = Choice.create(text: 'op1', question_id: question.id)
    choice2 = Choice.create(text: 'op2', question_id: question.id)
    choice3 = Choice.create(text: 'op3', question_id: question.id)

    survey = Survey.create(username: 'Usuario')

    Response.create(question_id: question.id, choice_id: choice2.id, survey_id: survey.id)

    choice = Choice.find(text: 'op2')
    survey = Survey.find(username: 'Usuario')
    response = Response.find(survey_id: survey.id)

    # Assert
    assert_equal choice.id == response.choice_id, true
  end
end
