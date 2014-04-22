require 'test_helper'

class ParsefilesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parsefiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parsefile" do
    assert_difference('Parsefile.count') do
      post :create, :parsefile => { }
    end

    assert_redirected_to parsefile_path(assigns(:parsefile))
  end

  test "should show parsefile" do
    get :show, :id => parsefiles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parsefiles(:one).to_param
    assert_response :success
  end

  test "should update parsefile" do
    put :update, :id => parsefiles(:one).to_param, :parsefile => { }
    assert_redirected_to parsefile_path(assigns(:parsefile))
  end

  test "should destroy parsefile" do
    assert_difference('Parsefile.count', -1) do
      delete :destroy, :id => parsefiles(:one).to_param
    end

    assert_redirected_to parsefiles_path
  end
end
