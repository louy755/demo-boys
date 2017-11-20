require 'test_helper'

class AssetsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get assets_create_url
    assert_response :success
  end

end
