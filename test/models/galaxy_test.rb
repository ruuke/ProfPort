require 'test_helper'

class GalaxyTest < ActiveSupport::TestCase
  test 'ddd' do
  	assert Galaxy.new(title: 'mlech put').save
  end
end
