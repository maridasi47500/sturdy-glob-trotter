require "application_system_test_case"

class VidsTest < ApplicationSystemTestCase
  setup do
    @vid = vids(:one)
  end

  test "visiting the index" do
    visit vids_url
    assert_selector "h1", text: "Vids"
  end

  test "should create vid" do
    visit vids_url
    click_on "New vid"

    fill_in "Activity", with: @vid.activity_id
    fill_in "City", with: @vid.city_id
    fill_in "Content", with: @vid.content
    fill_in "Device", with: @vid.device_id
    fill_in "Myvid", with: @vid.myvid
    fill_in "User", with: @vid.user_id
    click_on "Create Vid"

    assert_text "Vid was successfully created"
    click_on "Back"
  end

  test "should update Vid" do
    visit vid_url(@vid)
    click_on "Edit this vid", match: :first

    fill_in "Activity", with: @vid.activity_id
    fill_in "City", with: @vid.city_id
    fill_in "Content", with: @vid.content
    fill_in "Device", with: @vid.device_id
    fill_in "Myvid", with: @vid.myvid
    fill_in "User", with: @vid.user_id
    click_on "Update Vid"

    assert_text "Vid was successfully updated"
    click_on "Back"
  end

  test "should destroy Vid" do
    visit vid_url(@vid)
    click_on "Destroy this vid", match: :first

    assert_text "Vid was successfully destroyed"
  end
end
