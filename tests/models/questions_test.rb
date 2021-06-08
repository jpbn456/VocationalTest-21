require File.expand_path '../../test_helper.rb', __FILE__

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
end