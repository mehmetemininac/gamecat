require 'test_helper'

class MediatypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mediatypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mediatype" do
    assert_difference('Mediatype.count') do
      post :create, :mediatype => { }
    end

    assert_redirected_to mediatype_path(assigns(:mediatype))
  end

  test "should show mediatype" do
    get :show, :id => mediatypes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mediatypes(:one).to_param
    assert_response :success
  end

  test "should update mediatype" do
    put :update, :id => mediatypes(:one).to_param, :mediatype => { }
    assert_redirected_to mediatype_path(assigns(:mediatype))
  end

  test "should destroy mediatype" do
    assert_difference('Mediatype.count', -1) do
      delete :destroy, :id => mediatypes(:one).to_param
    end

    assert_redirected_to mediatypes_path
  end
end
