require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Game.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Game.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to games_url
  end

  def test_index
    get :index
    assert_template 'index'
  end
end
