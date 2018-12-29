require 'test_helper'

class SpaceshipControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spaceship = spaceships(:one)
  end

  test "should get edit" do
    get edit_spaceship_url(@spaceship)
    assert_response :success
  end

  test "should update spaceship" do
    put spaceship_url(@spaceship), params: { spaceship: { title: @spaceship.title, velocity: @spaceship.velocity, expedition_id: @spaceship.expedition_id } }
    assert_redirected_to spaceship_url(@spaceship)
  end

  test "should destroy spaceship" do
    assert_difference('Spaceship.count', -1) do
      delete spaceship_url(@spaceship)
    end

    assert_redirected_to expeditions_url
  end

end
