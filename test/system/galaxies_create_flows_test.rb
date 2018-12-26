require "application_system_test_case"

class GalaxiesCreateFlowsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit new_galaxy_url
    fill_in 'Title', with: 'mlechiy put'
    click_on "Save"

    assert_test 'mlechiy put'  
   end
end
