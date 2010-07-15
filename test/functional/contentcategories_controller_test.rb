require 'test_helper'

class ContentcategoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Contentcategory.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Contentcategory.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Contentcategory.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to contentcategory_url(assigns(:contentcategory))
  end
  
  def test_edit
    get :edit, :id => Contentcategory.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Contentcategory.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Contentcategory.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Contentcategory.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Contentcategory.first
    assert_redirected_to contentcategory_url(assigns(:contentcategory))
  end
  
  def test_destroy
    contentcategory = Contentcategory.first
    delete :destroy, :id => contentcategory
    assert_redirected_to contentcategories_url
    assert !Contentcategory.exists?(contentcategory.id)
  end
end
