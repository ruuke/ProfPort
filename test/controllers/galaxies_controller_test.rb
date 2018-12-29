require 'test_helper'

class GalaxiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_galaxy_url
    assert_response :success
  end

  test "should get create" do
    assert_difference('Galaxy.count') do
      post galaxies_url, params: { galaxy: { title: 'awda' } }
    end
    assert_redirected_to galaxy_path(Galaxy.last)
  end

  test "should get index" do
    get galaxies_url
    assert_response :success
  end

end
