require 'test_helper'

class ArtGuideControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
