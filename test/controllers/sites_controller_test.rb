require 'test_helper'

class SitesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get sites_top_url
    assert_response :success
  end

  test "should get about" do
    get sites_about_url
    assert_response :success
  end

  test "should get price" do
    get sites_price_url
    assert_response :success
  end

  test "should get access" do
    get sites_access_url
    assert_response :success
  end

  test "should get qanda" do
    get sites_qanda_url
    assert_response :success
  end

end
