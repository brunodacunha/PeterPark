require 'test_helper'

class CadcarrosControllerTest < ActionController::TestCase
  setup do
    @cadcarro = cadcarros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadcarros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadcarro" do
    assert_difference('Cadcarro.count') do
      post :create, cadcarro: { ano: @cadcarro.ano, cor: @cadcarro.cor, marca: @cadcarro.marca, modelo: @cadcarro.modelo, placa: @cadcarro.placa }
    end

    assert_redirected_to cadcarro_path(assigns(:cadcarro))
  end

  test "should show cadcarro" do
    get :show, id: @cadcarro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadcarro
    assert_response :success
  end

  test "should update cadcarro" do
    patch :update, id: @cadcarro, cadcarro: { ano: @cadcarro.ano, cor: @cadcarro.cor, marca: @cadcarro.marca, modelo: @cadcarro.modelo, placa: @cadcarro.placa }
    assert_redirected_to cadcarro_path(assigns(:cadcarro))
  end

  test "should destroy cadcarro" do
    assert_difference('Cadcarro.count', -1) do
      delete :destroy, id: @cadcarro
    end

    assert_redirected_to cadcarros_path
  end
end
