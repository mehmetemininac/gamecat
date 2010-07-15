require 'test_helper'

class DisctypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Disctype.new.valid?
  end
end
