require 'test_helper'

class CadusersControllerTest < ActionController::TestCase
  setup do
    @caduser = cadusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caduser" do
    assert_difference('Caduser.count') do
      post :create, caduser: { box: @caduser.box, cpf: @caduser.cpf, nome: @caduser.nome, placa: @caduser.placa, rg: @caduser.rg, turno: @caduser.turno }
    end

    assert_redirected_to caduser_path(assigns(:caduser))
  end

  test "should show caduser" do
    get :show, id: @caduser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caduser
    assert_response :success
  end

  test "should update caduser" do
    patch :update, id: @caduser, caduser: { box: @caduser.box, cpf: @caduser.cpf, nome: @caduser.nome, placa: @caduser.placa, rg: @caduser.rg, turno: @caduser.turno }
    assert_redirected_to caduser_path(assigns(:caduser))
  end

  test "should destroy caduser" do
    assert_difference('Caduser.count', -1) do
      delete :destroy, id: @caduser
    end

    assert_redirected_to cadusers_path
  end
end
