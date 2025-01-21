require "application_system_test_case"

class SummitsTest < ApplicationSystemTestCase
  setup do
    @summit = summits(:one)
  end

  test "visiting the index" do
    visit summits_url
    assert_selector "h1", text: "Summits"
  end

  test "should create summit" do
    visit summits_url
    click_on "New summit"

    fill_in "Insta", with: @summit.insta
    fill_in "Mountain", with: @summit.mountain_id
    click_on "Create Summit"

    assert_text "Summit was successfully created"
    click_on "Back"
  end

  test "should update Summit" do
    visit summit_url(@summit)
    click_on "Edit this summit", match: :first

    fill_in "Insta", with: @summit.insta
    fill_in "Mountain", with: @summit.mountain_id
    click_on "Update Summit"

    assert_text "Summit was successfully updated"
    click_on "Back"
  end

  test "should destroy Summit" do
    visit summit_url(@summit)
    click_on "Destroy this summit", match: :first

    assert_text "Summit was successfully destroyed"
  end
end
