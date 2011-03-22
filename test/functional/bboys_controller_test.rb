require 'test_helper'

class BboysControllerTest < ActionController::TestCase
  setup do
    @bboy = bboys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bboys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bboy" do
    assert_difference('Bboy.count') do
      post :create, :bboy => @bboy.attributes
    end

    assert_redirected_to bboy_path(assigns(:bboy))
  end

  test "should show bboy" do
    get :show, :id => @bboy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bboy.to_param
    assert_response :success
  end

  test "should update bboy" do
    put :update, :id => @bboy.to_param, :bboy => @bboy.attributes
    assert_redirected_to bboy_path(assigns(:bboy))
  end

  test "should destroy bboy" do
    assert_difference('Bboy.count', -1) do
      delete :destroy, :id => @bboy.to_param
    end

    assert_redirected_to bboys_path
  end
end
