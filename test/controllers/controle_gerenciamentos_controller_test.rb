require 'test_helper'

class ControleGerenciamentosControllerTest < ActionController::TestCase
  setup do
    @controle_gerenciamento = controle_gerenciamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controle_gerenciamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controle_gerenciamento" do
    assert_difference('ControleGerenciamento.count') do
      post :create, controle_gerenciamento: { horaadd: @controle_gerenciamento.horaadd, mensalista_integral: @controle_gerenciamento.mensalista_integral, mensalista_meioturno: @controle_gerenciamento.mensalista_meioturno, num_vagas: @controle_gerenciamento.num_vagas, valor_diaria: @controle_gerenciamento.valor_diaria, valor_hora: @controle_gerenciamento.valor_hora }
    end

    assert_redirected_to controle_gerenciamento_path(assigns(:controle_gerenciamento))
  end

  test "should show controle_gerenciamento" do
    get :show, id: @controle_gerenciamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controle_gerenciamento
    assert_response :success
  end

  test "should update controle_gerenciamento" do
    patch :update, id: @controle_gerenciamento, controle_gerenciamento: { horaadd: @controle_gerenciamento.horaadd, mensalista_integral: @controle_gerenciamento.mensalista_integral, mensalista_meioturno: @controle_gerenciamento.mensalista_meioturno, num_vagas: @controle_gerenciamento.num_vagas, valor_diaria: @controle_gerenciamento.valor_diaria, valor_hora: @controle_gerenciamento.valor_hora }
    assert_redirected_to controle_gerenciamento_path(assigns(:controle_gerenciamento))
  end

  test "should destroy controle_gerenciamento" do
    assert_difference('ControleGerenciamento.count', -1) do
      delete :destroy, id: @controle_gerenciamento
    end

    assert_redirected_to controle_gerenciamentos_path
  end
end
