require 'test_helper'

class ProjtalksControllerTest < ActionController::TestCase
  setup do
    @projtalk = projtalks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projtalks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projtalk" do
    assert_difference('Projtalk.count') do
      post :create, projtalk: { name: @projtalk.name, project_id: @projtalk.project_id, user_id: @projtalk.user_id }
    end

    assert_redirected_to projtalk_path(assigns(:projtalk))
  end

  test "should show projtalk" do
    get :show, id: @projtalk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projtalk
    assert_response :success
  end

  test "should update projtalk" do
    patch :update, id: @projtalk, projtalk: { name: @projtalk.name, project_id: @projtalk.project_id, user_id: @projtalk.user_id }
    assert_redirected_to projtalk_path(assigns(:projtalk))
  end

  test "should destroy projtalk" do
    assert_difference('Projtalk.count', -1) do
      delete :destroy, id: @projtalk
    end

    assert_redirected_to projtalks_path
  end
end
