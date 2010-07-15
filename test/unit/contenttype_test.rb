require 'test_helper'

class ContenttypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Contenttype.new.valid?
  end
end
