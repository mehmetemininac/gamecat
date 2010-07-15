require 'test_helper'

class ContainerTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Container.new.valid?
  end
end
