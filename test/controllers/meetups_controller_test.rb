require 'test_helper'

class MeetupsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get meetups_list_url
    assert_response :success
  end

  test "should get new" do
    get meetups_new_url
    assert_response :success
  end

  test "should get delete" do
    get meetups_delete_url
    assert_response :success
  end

end
