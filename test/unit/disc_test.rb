require 'test_helper'

class DiscTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Disc.new.valid?
  end
end
