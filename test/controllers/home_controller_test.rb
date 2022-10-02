require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get _header" do
    get home__header_url
    assert_response :success
  end

  test "should get about" do
    get home_about_url
    assert_response :success
  end

  test "should get profile" do
    get home_profile_url
    assert_response :success
  end
end
