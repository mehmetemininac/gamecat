require 'test_helper'

class GamecategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamecategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamecategory" do
    assert_difference('Gamecategory.count') do
      post :create, :gamecategory => { }
    end

    assert_redirected_to gamecategory_path(assigns(:gamecategory))
  end

  test "should show gamecategory" do
    get :show, :id => gamecategories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => gamecategories(:one).to_param
    assert_response :success
  end

  test "should update gamecategory" do
    put :update, :id => gamecategories(:one).to_param, :gamecategory => { }
    assert_redirected_to gamecategory_path(assigns(:gamecategory))
  end

  test "should destroy gamecategory" do
    assert_difference('Gamecategory.count', -1) do
      delete :destroy, :id => gamecategories(:one).to_param
    end

    assert_redirected_to gamecategories_path
  end
end
