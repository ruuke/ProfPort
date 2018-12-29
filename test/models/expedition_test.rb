require 'test_helper'

class ExpeditionTest < ActiveSupport::TestCase


  # test "the truth" do
  #   assert true
  # end

  test 'should save valid expedition' do
    expedition = build(:expedition)
    assert expedition.save
  end

  test 'should not save invalid expedition' do
    expedition = Expedition.new 
    assert_not expedition.save
  end

  test 'title length should be 5..50' do
    expedition = Expedition.create(title: 'abcdf')
    assert expedition.save
  end

  test 'title length should not be less when 5..50' do
    expedition = Expedition.create(title: 'abc')
    assert_not expedition.save
  end
end