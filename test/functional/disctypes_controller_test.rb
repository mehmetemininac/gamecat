require 'test_helper'

class DisctypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Disctype.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Disctype.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Disctype.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to disctype_url(assigns(:disctype))
  end
  
  def test_edit
    get :edit, :id => Disctype.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Disctype.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Disctype.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Disctype.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Disctype.first
    assert_redirected_to disctype_url(assigns(:disctype))
  end
  
  def test_destroy
    disctype = Disctype.first
    delete :destroy, :id => disctype
    assert_redirected_to disctypes_url
    assert !Disctype.exists?(disctype.id)
  end
end
