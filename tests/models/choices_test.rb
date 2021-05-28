require File.expand_path '../../test_helper.rb', __FILE__

class ChoiceTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase

  def test_choice_must_has_text
    # Arrange
    choice1 = Choice.new
    choice2 = Choice.new
    choice3 = Choice.new
    choice4 = Choice.new
    choice5 = Choice.new
    # Act
    choice1.text = nil
    choice2.text = ''
    choice4.text = 'You love animals?'
    choice5.text = 'You are interested in doing research?'
    # Assert
    assert_equal(choice1.valid?, false)
    assert_equal(choice2.valid?, false)
    assert_equal(choice3.valid?, false)
    assert_equal(choice4.valid?, true)
    assert_equal(choice5.valid?, true)
  end

end