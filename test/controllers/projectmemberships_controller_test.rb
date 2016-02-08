require 'test_helper'

class ProjectmembershipsControllerTest < ActionController::TestCase
  setup do
    @projectmembership = projectmemberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectmemberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projectmembership" do
    assert_difference('Projectmembership.count') do
      post :create, projectmembership: { project_id: @projectmembership.project_id, projectmembership_id: @projectmembership.projectmembership_id, user_id: @projectmembership.user_id }
    end

    assert_redirected_to projectmembership_path(assigns(:projectmembership))
  end

  test "should show projectmembership" do
    get :show, id: @projectmembership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projectmembership
    assert_response :success
  end

  test "should update projectmembership" do
    patch :update, id: @projectmembership, projectmembership: { project_id: @projectmembership.project_id, projectmembership_id: @projectmembership.projectmembership_id, user_id: @projectmembership.user_id }
    assert_redirected_to projectmembership_path(assigns(:projectmembership))
  end

  test "should destroy projectmembership" do
    assert_difference('Projectmembership.count', -1) do
      delete :destroy, id: @projectmembership
    end

    assert_redirected_to projectmemberships_path
  end
end
