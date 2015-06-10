require 'test_helper'

class GerenciamentosControllerTest < ActionController::TestCase
  setup do
    @gerenciamento = gerenciamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gerenciamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gerenciamento" do
    assert_difference('Gerenciamento.count') do
      post :create, gerenciamento: { horaadd: @gerenciamento.horaadd, mensalista_integral: @gerenciamento.mensalista_integral, mensalista_meio_turno: @gerenciamento.mensalista_meio_turno, num_vagas: @gerenciamento.num_vagas, valor_diaria: @gerenciamento.valor_diaria, valor_hora: @gerenciamento.valor_hora }
    end

    assert_redirected_to gerenciamento_path(assigns(:gerenciamento))
  end

  test "should show gerenciamento" do
    get :show, id: @gerenciamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gerenciamento
    assert_response :success
  end

  test "should update gerenciamento" do
    patch :update, id: @gerenciamento, gerenciamento: { horaadd: @gerenciamento.horaadd, mensalista_integral: @gerenciamento.mensalista_integral, mensalista_meio_turno: @gerenciamento.mensalista_meio_turno, num_vagas: @gerenciamento.num_vagas, valor_diaria: @gerenciamento.valor_diaria, valor_hora: @gerenciamento.valor_hora }
    assert_redirected_to gerenciamento_path(assigns(:gerenciamento))
  end

  test "should destroy gerenciamento" do
    assert_difference('Gerenciamento.count', -1) do
      delete :destroy, id: @gerenciamento
    end

    assert_redirected_to gerenciamentos_path
  end
end
