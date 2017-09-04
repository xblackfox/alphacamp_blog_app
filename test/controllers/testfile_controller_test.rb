require 'test_helper'

class TestfileControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get testfile_home_url
    assert_response :success
  end

end
