require 'test_helper'

class DiscsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Disc.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Disc.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Disc.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to disc_url(assigns(:disc))
  end
  
  def test_edit
    get :edit, :id => Disc.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Disc.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Disc.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Disc.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Disc.first
    assert_redirected_to disc_url(assigns(:disc))
  end
  
  def test_destroy
    disc = Disc.first
    delete :destroy, :id => disc
    assert_redirected_to discs_url
    assert !Disc.exists?(disc.id)
  end
end
