require 'test_helper'

class MoviegeneresControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Moviegenere.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Moviegenere.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Moviegenere.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to moviegenere_url(assigns(:moviegenere))
  end
  
  def test_edit
    get :edit, :id => Moviegenere.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Moviegenere.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Moviegenere.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Moviegenere.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Moviegenere.first
    assert_redirected_to moviegenere_url(assigns(:moviegenere))
  end
  
  def test_destroy
    moviegenere = Moviegenere.first
    delete :destroy, :id => moviegenere
    assert_redirected_to moviegeneres_url
    assert !Moviegenere.exists?(moviegenere.id)
  end
end
