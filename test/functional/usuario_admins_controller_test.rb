require 'test_helper'

class UsuarioAdminsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_admin" do
    assert_difference('UsuarioAdmin.count') do
      post :create, :usuario_admin => { }
    end

    assert_redirected_to usuario_admin_path(assigns(:usuario_admin))
  end

  test "should show usuario_admin" do
    get :show, :id => usuario_admins(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => usuario_admins(:one).to_param
    assert_response :success
  end

  test "should update usuario_admin" do
    put :update, :id => usuario_admins(:one).to_param, :usuario_admin => { }
    assert_redirected_to usuario_admin_path(assigns(:usuario_admin))
  end

  test "should destroy usuario_admin" do
    assert_difference('UsuarioAdmin.count', -1) do
      delete :destroy, :id => usuario_admins(:one).to_param
    end

    assert_redirected_to usuario_admins_path
  end
end
