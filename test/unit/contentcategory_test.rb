require 'test_helper'

class ContentcategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Contentcategory.new.valid?
  end
end
