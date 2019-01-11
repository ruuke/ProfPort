require "application_system_test_case"

class SpaceshipsTest < ApplicationSystemTestCase
  test 'should create spaceship' do 
    visit new_spaceship_url
    fill_in "Title", with: "ikar"
    click_on 'Save'

    assert_text 'ikar'
  end
end

