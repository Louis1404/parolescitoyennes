require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get quinoussommes" do
    get pages_quinoussommes_url
    assert_response :success
  end

  test "should get proposition" do
    get pages_proposition_url
    assert_response :success
  end

end
