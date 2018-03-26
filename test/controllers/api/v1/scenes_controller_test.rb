require 'test_helper'

class Api::V1::ScenesControllerTest < ActionDispatch::IntegrationTest
  test "should get block_id:integer" do
    get api_v1_scenes_block_id:integer_url
    assert_response :success
  end

  test "should get ball_id:integer" do
    get api_v1_scenes_ball_id:integer_url
    assert_response :success
  end

end
