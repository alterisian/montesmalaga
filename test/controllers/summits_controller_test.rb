require "test_helper"

class SummitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @summit = summits(:one)
  end

  test "should get index" do
    get summits_url
    assert_response :success
  end

  test "should get new" do
    get new_summit_url
    assert_response :success
  end

  test "should create summit" do
    assert_difference("Summit.count") do
      post summits_url, params: { summit: { insta: @summit.insta, mountain_id: @summit.mountain_id } }
    end

    assert_redirected_to summit_url(Summit.last)
  end

  test "should show summit" do
    get summit_url(@summit)
    assert_response :success
  end

  test "should get edit" do
    get edit_summit_url(@summit)
    assert_response :success
  end

  test "should update summit" do
    patch summit_url(@summit), params: { summit: { insta: @summit.insta, mountain_id: @summit.mountain_id } }
    assert_redirected_to summit_url(@summit)
  end

  test "should destroy summit" do
    assert_difference("Summit.count", -1) do
      delete summit_url(@summit)
    end

    assert_redirected_to summits_url
  end
end
