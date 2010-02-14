require 'test_helper'

class ContenttypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contenttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contenttype" do
    assert_difference('Contenttype.count') do
      post :create, :contenttype => { }
    end

    assert_redirected_to contenttype_path(assigns(:contenttype))
  end

  test "should show contenttype" do
    get :show, :id => contenttypes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => contenttypes(:one).to_param
    assert_response :success
  end

  test "should update contenttype" do
    put :update, :id => contenttypes(:one).to_param, :contenttype => { }
    assert_redirected_to contenttype_path(assigns(:contenttype))
  end

  test "should destroy contenttype" do
    assert_difference('Contenttype.count', -1) do
      delete :destroy, :id => contenttypes(:one).to_param
    end

    assert_redirected_to contenttypes_path
  end
end
