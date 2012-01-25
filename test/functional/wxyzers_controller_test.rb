require 'test_helper'

class WxyzersControllerTest < ActionController::TestCase
  setup do
    @wxyzer = wxyzers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wxyzers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wxyzer" do
    assert_difference('Wxyzer.count') do
      post :create, wxyzer: @wxyzer.attributes
    end

    assert_redirected_to wxyzer_path(assigns(:wxyzer))
  end

  test "should show wxyzer" do
    get :show, id: @wxyzer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wxyzer
    assert_response :success
  end

  test "should update wxyzer" do
    put :update, id: @wxyzer, wxyzer: @wxyzer.attributes
    assert_redirected_to wxyzer_path(assigns(:wxyzer))
  end

  test "should destroy wxyzer" do
    assert_difference('Wxyzer.count', -1) do
      delete :destroy, id: @wxyzer
    end

    assert_redirected_to wxyzers_path
  end
end
