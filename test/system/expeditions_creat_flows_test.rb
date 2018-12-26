require "application_system_test_case"

class ExpeditionsCreatFlowsTest < ApplicationSystemTestCase
  test 'should create expedition' do 
    visit new_expedition_url
    fill_in "Title", with: "na mars"
    click_on 'Save'

    assert_text 'na mars'
  end
end
