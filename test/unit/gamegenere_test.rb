require 'test_helper'

class GamegenereTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Gamegenere.new.valid?
  end
end
