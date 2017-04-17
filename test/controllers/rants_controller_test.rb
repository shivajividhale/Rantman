require 'test_helper'

class RantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rants_index_url
    assert_response :success
  end

end
