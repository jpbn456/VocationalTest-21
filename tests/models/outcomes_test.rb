require File.expand_path '../../test_helper.rb', __FILE__

class OutcomeTest < MiniTest::Unit::TestCase
  MiniTest::Unit::TestCase
    def test_outcome_must_has_career_and_choice
        #Arrange
        outcome1 = Outcome.new
        outcome2 = Outcome.new
        career = Career.create(:name => 'Lic. en Cs. de la Computación')
        choice = Choice.create(:text => 'Holaaaaaa')
        #Act
        outcome1.career_id = 1
        outcome1.choice_id = 1
        outcome2.career_id = 2
        outcome2.choice_id = nil
        #Assert
        assert_equal(outcome1.valid?, true)
        assert_equal(outcome2.valid?, false)
    end
end