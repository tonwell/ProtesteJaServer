require 'test_helper'

class ProtestosControllerTest < ActionController::TestCase
  setup do
    @protesto = protestos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:protestos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create protesto" do
    assert_difference('Protesto.count') do
      post :create, protesto: { descricao: @protesto.descricao, pessoa: @protesto.pessoa }
    end

    assert_redirected_to protesto_path(assigns(:protesto))
  end

  test "should show protesto" do
    get :show, id: @protesto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @protesto
    assert_response :success
  end

  test "should update protesto" do
    patch :update, id: @protesto, protesto: { descricao: @protesto.descricao, pessoa: @protesto.pessoa }
    assert_redirected_to protesto_path(assigns(:protesto))
  end

  test "should destroy protesto" do
    assert_difference('Protesto.count', -1) do
      delete :destroy, id: @protesto
    end

    assert_redirected_to protestos_path
  end
end
