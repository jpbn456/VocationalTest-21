# frozen_string_literal: true

require File.expand_path '../test_helper.rb', __dir__

# Unit Test suit for Choices Model
class ChoiceTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase

  def test_choice_must_has_text
    # Arrange
    choice1 = Choice.new
    choice2 = Choice.new
    choice3 = Choice.new

    # Act
    choice1.text = ''
    choice2.text = nil
    choice3.tesxt = 'Opcion3'

    # Assert
    assert_equal(choice1.valid?, false)
    assert_equal(choice2.valid?, false)
    assert_equal(choice3.valid?, true)
  end
end
