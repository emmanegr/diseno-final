require 'test_helper'

class ContenidoControllerTest < ActionController::TestCase
  test "should get competitions" do
    get :competitions
    assert_response :success
  end

  test "should get estudia" do
    get :estudia
    assert_response :success
  end

end
