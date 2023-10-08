require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_home_url
    assert_response :success
  end

  test "should get add" do
    get main_add_url
    assert_response :success
  end

  test "should get surprise" do
    get main_surprise_url
    assert_response :success
  end

  test "should get view" do
    get main_view_url
    assert_response :success
  end

  test "should get login" do
    get main_login_url
    assert_response :success
  end
end
