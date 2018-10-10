require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  @activities = PublicActivity::Activity.order("created_at DESC").where(owner_id = current_user, owner_type = "User" )
end
