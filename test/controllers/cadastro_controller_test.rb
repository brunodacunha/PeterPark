require 'test_helper'

class CadastroControllerTest < ActionController::TestCase
  test "should get cadastro" do
    get :cadastro
    assert_response :success
  end

end
