require 'test_helper'

class ArticlsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articl" do
    assert_difference('Articl.count') do
      post :create, :articl => { }
    end

    assert_redirected_to articl_path(assigns(:articl))
  end

  test "should show articl" do
    get :show, :id => articls(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => articls(:one).to_param
    assert_response :success
  end

  test "should update articl" do
    put :update, :id => articls(:one).to_param, :articl => { }
    assert_redirected_to articl_path(assigns(:articl))
  end

  test "should destroy articl" do
    assert_difference('Articl.count', -1) do
      delete :destroy, :id => articls(:one).to_param
    end

    assert_redirected_to articls_path
  end
end
