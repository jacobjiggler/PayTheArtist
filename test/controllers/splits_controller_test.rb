require 'test_helper'

class SplitsControllerTest < ActionController::TestCase
  setup do
    @split = splits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:splits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create split" do
    assert_difference('Split.count') do
      post :create, split: { total: @split.total }
    end

    assert_redirected_to split_path(assigns(:split))
  end

  test "should show split" do
    get :show, id: @split
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @split
    assert_response :success
  end

  test "should update split" do
    patch :update, id: @split, split: { total: @split.total }
    assert_redirected_to split_path(assigns(:split))
  end

  test "should destroy split" do
    assert_difference('Split.count', -1) do
      delete :destroy, id: @split
    end

    assert_redirected_to splits_path
  end
end
