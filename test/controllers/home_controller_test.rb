require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get history" do
    get home_history_url
    assert_response :success
  end

  test "should get portafolio" do
    get home_portafolio_url
    assert_response :success
  end

  test "should get contact" do
    get home_contact_url
    assert_response :success
  end

  test "should get articles" do
    get home_articles_url
    assert_response :success
  end

  test "should get categories" do
    get home_categories_url
    assert_response :success
  end

end
