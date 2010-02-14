require 'test_helper'

class ContainertypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:containertypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create containertype" do
    assert_difference('Containertype.count') do
      post :create, :containertype => { }
    end

    assert_redirected_to containertype_path(assigns(:containertype))
  end

  test "should show containertype" do
    get :show, :id => containertypes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => containertypes(:one).to_param
    assert_response :success
  end

  test "should update containertype" do
    put :update, :id => containertypes(:one).to_param, :containertype => { }
    assert_redirected_to containertype_path(assigns(:containertype))
  end

  test "should destroy containertype" do
    assert_difference('Containertype.count', -1) do
      delete :destroy, :id => containertypes(:one).to_param
    end

    assert_redirected_to containertypes_path
  end
end
