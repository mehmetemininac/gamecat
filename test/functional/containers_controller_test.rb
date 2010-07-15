require 'test_helper'

class ContainersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Container.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Container.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Container.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to container_url(assigns(:container))
  end
  
  def test_edit
    get :edit, :id => Container.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Container.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Container.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Container.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Container.first
    assert_redirected_to container_url(assigns(:container))
  end
  
  def test_destroy
    container = Container.first
    delete :destroy, :id => container
    assert_redirected_to containers_url
    assert !Container.exists?(container.id)
  end
end
