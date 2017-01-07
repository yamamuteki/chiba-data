require 'test_helper'

class ShisetsusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shisetsus_index_url
    assert_response :success
  end

end
