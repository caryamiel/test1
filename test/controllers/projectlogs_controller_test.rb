require 'test_helper'

class ProjectlogsControllerTest < ActionController::TestCase
  setup do
    @projectlog = projectlogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectlogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projectlog" do
    assert_difference('Projectlog.count') do
      post :create, projectlog: { action: @projectlog.action, parameter: @projectlog.parameter, project_id: @projectlog.project_id, user_id: @projectlog.user_id }
    end

    assert_redirected_to projectlog_path(assigns(:projectlog))
  end

  test "should show projectlog" do
    get :show, id: @projectlog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projectlog
    assert_response :success
  end

  test "should update projectlog" do
    patch :update, id: @projectlog, projectlog: { action: @projectlog.action, parameter: @projectlog.parameter, project_id: @projectlog.project_id, user_id: @projectlog.user_id }
    assert_redirected_to projectlog_path(assigns(:projectlog))
  end

  test "should destroy projectlog" do
    assert_difference('Projectlog.count', -1) do
      delete :destroy, id: @projectlog
    end

    assert_redirected_to projectlogs_path
  end
end
