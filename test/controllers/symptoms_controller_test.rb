require "test_helper"

class SymptomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get symptoms_index_url
    assert_response :success
  end

  test "should get show" do
    get symptoms_show_url
    assert_response :success
  end

  test "should get new" do
    get symptoms_new_url
    assert_response :success
  end

  test "should get create" do
    get symptoms_create_url
    assert_response :success
  end

  test "should get edit" do
    get symptoms_edit_url
    assert_response :success
  end

  test "should get update" do
    get symptoms_update_url
    assert_response :success
  end

  test "should get destroy" do
    get symptoms_destroy_url
    assert_response :success
  end
end
