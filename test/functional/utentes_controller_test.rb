require 'test_helper'

class UtentesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:utentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create utente" do
    assert_difference('Utente.count') do
      post :create, :utente => { }
    end

    assert_redirected_to utente_path(assigns(:utente))
  end

  test "should show utente" do
    get :show, :id => utentes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => utentes(:one).to_param
    assert_response :success
  end

  test "should update utente" do
    put :update, :id => utentes(:one).to_param, :utente => { }
    assert_redirected_to utente_path(assigns(:utente))
  end

  test "should destroy utente" do
    assert_difference('Utente.count', -1) do
      delete :destroy, :id => utentes(:one).to_param
    end

    assert_redirected_to utentes_path
  end
end
