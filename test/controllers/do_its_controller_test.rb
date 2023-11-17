require "test_helper"

class DoItsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get do_its_index_url
    assert_response :success
  end

  test "should get new" do
    get do_its_new_url
    assert_response :success
  end

  test "should get create" do
    get do_its_create_url
    assert_response :success
  end

  test "should get edit" do
    get do_its_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get do_its_destroy_url
    assert_response :success
  end
end
