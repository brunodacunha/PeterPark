require 'test_helper'

class CadastroUserControllerTest < ActionController::TestCase
  test "should get cadastroUser" do
    get :cadastroUser
    assert_response :success
  end

end
