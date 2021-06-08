require File.expand_path '../../test_helper.rb', __FILE__

class ChoiceTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase

  def test_choice_must_has_text
    # Arrange
    choice1 = Choice.new
    choice2 = Choice.new

    # Act

    choice1.text = ''
    choice2.text = nil

    # Assert
    assert_equal(choice1.valid?, false)
    assert_equal(choice2.valid?, false)

  end
end