require "test_helper"

class MetroServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get metro_services_new_url
    assert_response :success
  end

  test "should get create" do
    get metro_services_create_url
    assert_response :success
  end

  test "should get edit" do
    get metro_services_edit_url
    assert_response :success
  end

  test "should get update" do
    get metro_services_update_url
    assert_response :success
  end

  test "should get show" do
    get metro_services_show_url
    assert_response :success
  end
end
