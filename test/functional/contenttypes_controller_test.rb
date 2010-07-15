require 'test_helper'

class ContenttypesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Contenttype.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Contenttype.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Contenttype.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to contenttype_url(assigns(:contenttype))
  end
  
  def test_edit
    get :edit, :id => Contenttype.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Contenttype.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Contenttype.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Contenttype.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Contenttype.first
    assert_redirected_to contenttype_url(assigns(:contenttype))
  end
  
  def test_destroy
    contenttype = Contenttype.first
    delete :destroy, :id => contenttype
    assert_redirected_to contenttypes_url
    assert !Contenttype.exists?(contenttype.id)
  end
end
