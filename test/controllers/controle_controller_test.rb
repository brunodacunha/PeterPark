require 'test_helper'

class ControleControllerTest < ActionController::TestCase
  test "should get controle" do
    get :controle
    assert_response :success
  end

end
