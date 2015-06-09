require 'test_helper'

class GerenciamentoControllerTest < ActionController::TestCase
  test "should get gerenciamento" do
    get :gerenciamento
    assert_response :success
  end

end
