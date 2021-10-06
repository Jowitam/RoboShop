require "test_helper"

class CartControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cart_show_url
    assert_response :success
  end

  test "should get edit" do
    get cart_edit_url
    assert_response :success
  end

  test "should get confirmation" do
    get cart_confirmation_url
    assert_response :success
  end
end
