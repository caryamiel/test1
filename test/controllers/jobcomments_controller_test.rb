require 'test_helper'

class JobcommentsControllerTest < ActionController::TestCase
  setup do
    @jobcomment = jobcomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobcomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobcomment" do
    assert_difference('Jobcomment.count') do
      post :create, jobcomment: { content: @jobcomment.content, user_id: @jobcomment.user_id }
    end

    assert_redirected_to jobcomment_path(assigns(:jobcomment))
  end

  test "should show jobcomment" do
    get :show, id: @jobcomment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobcomment
    assert_response :success
  end

  test "should update jobcomment" do
    patch :update, id: @jobcomment, jobcomment: { content: @jobcomment.content, user_id: @jobcomment.user_id }
    assert_redirected_to jobcomment_path(assigns(:jobcomment))
  end

  test "should destroy jobcomment" do
    assert_difference('Jobcomment.count', -1) do
      delete :destroy, id: @jobcomment
    end

    assert_redirected_to jobcomments_path
  end
end
