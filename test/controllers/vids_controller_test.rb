require "test_helper"

class VidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vid = vids(:one)
  end

  test "should get index" do
    get vids_url
    assert_response :success
  end

  test "should get new" do
    get new_vid_url
    assert_response :success
  end

  test "should create vid" do
    assert_difference("Vid.count") do
      post vids_url, params: { vid: { activity_id: @vid.activity_id, city_id: @vid.city_id, content: @vid.content, device_id: @vid.device_id, myvid: @vid.myvid, user_id: @vid.user_id } }
    end

    assert_redirected_to vid_url(Vid.last)
  end

  test "should show vid" do
    get vid_url(@vid)
    assert_response :success
  end

  test "should get edit" do
    get edit_vid_url(@vid)
    assert_response :success
  end

  test "should update vid" do
    patch vid_url(@vid), params: { vid: { activity_id: @vid.activity_id, city_id: @vid.city_id, content: @vid.content, device_id: @vid.device_id, myvid: @vid.myvid, user_id: @vid.user_id } }
    assert_redirected_to vid_url(@vid)
  end

  test "should destroy vid" do
    assert_difference("Vid.count", -1) do
      delete vid_url(@vid)
    end

    assert_redirected_to vids_url
  end
end
