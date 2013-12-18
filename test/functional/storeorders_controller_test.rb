require 'test_helper'

class StoreordersControllerTest < ActionController::TestCase
  setup do
    @storeorder = storeorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storeorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storeorder" do
    assert_difference('Storeorder.count') do
      post :create, storeorder: @storeorder.attributes
    end

    assert_redirected_to storeorder_path(assigns(:storeorder))
  end

  test "should show storeorder" do
    get :show, id: @storeorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storeorder
    assert_response :success
  end

  test "should update storeorder" do
    put :update, id: @storeorder, storeorder: @storeorder.attributes
    assert_redirected_to storeorder_path(assigns(:storeorder))
  end

  test "should destroy storeorder" do
    assert_difference('Storeorder.count', -1) do
      delete :destroy, id: @storeorder
    end

    assert_redirected_to storeorders_path
  end
end
