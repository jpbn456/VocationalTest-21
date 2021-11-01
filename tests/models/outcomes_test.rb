require File.expand_path '../test_helper.rb', __dir__

class OutcomeTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
  def test_outcome_must_has_career_and_choice
    # Arrange
    outcome1 = Outcome.new
    outcome2 = Outcome.new
    outcome3 = Outcome.new

    # Act
    outcome1.career_id = 1
    outcome1.choice_id = 1
    outcome2.career_id = 1
    outcome3.choice_id = 1

    # Assert
    assert_equal(outcome1.valid?, true)
    assert_equal(outcome2.valid?, false)
    assert_equal(outcome3.valid?, false)
  end
end
