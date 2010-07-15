require 'test_helper'

class MoviegenereTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Moviegenere.new.valid?
  end
end
