require 'test_helper'

class TaskmembershipsControllerTest < ActionController::TestCase
  setup do
    @taskmembership = taskmemberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taskmemberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taskmembership" do
    assert_difference('Taskmembership.count') do
      post :create, taskmembership: { task_id: @taskmembership.task_id, taskmembership_id: @taskmembership.taskmembership_id, user_id: @taskmembership.user_id }
    end

    assert_redirected_to taskmembership_path(assigns(:taskmembership))
  end

  test "should show taskmembership" do
    get :show, id: @taskmembership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taskmembership
    assert_response :success
  end

  test "should update taskmembership" do
    patch :update, id: @taskmembership, taskmembership: { task_id: @taskmembership.task_id, taskmembership_id: @taskmembership.taskmembership_id, user_id: @taskmembership.user_id }
    assert_redirected_to taskmembership_path(assigns(:taskmembership))
  end

  test "should destroy taskmembership" do
    assert_difference('Taskmembership.count', -1) do
      delete :destroy, id: @taskmembership
    end

    assert_redirected_to taskmemberships_path
  end
end
