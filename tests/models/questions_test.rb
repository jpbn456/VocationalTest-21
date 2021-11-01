require File.expand_path '../test_helper.rb', __dir__

class QuestionTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase

  def test_question_may_has_many_choices
    # Arrange
    question = Question.create(name: 'Pregunta', description: 'Info de pregunta', number: '1')

    # Act
    Choice.create(text: 'Choice1', question_id: question.id)
    Choice.create(text: 'Choice2', question_id: question.id)

    # Assert
    assert_equal question.choices.count, 2
  end

  def test_has_many_responses
    # Arrange
    question = Question.create(name: 'Pregunta1', description: 'Desc de pregunta', number: '1')

    # Act
    choice1 = Choice.create(text: 'Si', question_id: question.id, relevant: true)
    choice2 = Choice.create(text: 'No', question_id: question.id, relevant: false)

    survey1 = Survey.create(username: 'Jorge')
    survey2 = Survey.create(username: 'Victoria')

    Response.create(question_id: question.id, choice_id: choice1.id, survey_id: survey1.id)
    Response.create(question_id: question.id, choice_id: choice1.id, survey_id: survey2.id)

    choice = Choice.find(text: 'Si')

    # Assert
    assert_equal choice.responses.count, 2
  end
end
