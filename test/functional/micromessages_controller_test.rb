require 'test_helper'

class MicromessagesControllerTest < ActionController::TestCase
  setup do
    @micromessage = micromessages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micromessages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micromessage" do
    assert_difference('Micromessage.count') do
      post :create, :micromessage => @micromessage.attributes
    end

    assert_redirected_to micromessage_path(assigns(:micromessage))
  end

  test "should show micromessage" do
    get :show, :id => @micromessage.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @micromessage.to_param
    assert_response :success
  end

  test "should update micromessage" do
    put :update, :id => @micromessage.to_param, :micromessage => @micromessage.attributes
    assert_redirected_to micromessage_path(assigns(:micromessage))
  end

  test "should destroy micromessage" do
    assert_difference('Micromessage.count', -1) do
      delete :destroy, :id => @micromessage.to_param
    end

    assert_redirected_to micromessages_path
  end
end
