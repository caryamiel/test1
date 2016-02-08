require 'test_helper'

class TalkrespsControllerTest < ActionController::TestCase
  setup do
    @talkresp = talkresps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talkresps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talkresp" do
    assert_difference('Talkresp.count') do
      post :create, talkresp: { projtalk_id: @talkresp.projtalk_id, talkcontent: @talkresp.talkcontent, user_id: @talkresp.user_id }
    end

    assert_redirected_to talkresp_path(assigns(:talkresp))
  end

  test "should show talkresp" do
    get :show, id: @talkresp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @talkresp
    assert_response :success
  end

  test "should update talkresp" do
    patch :update, id: @talkresp, talkresp: { projtalk_id: @talkresp.projtalk_id, talkcontent: @talkresp.talkcontent, user_id: @talkresp.user_id }
    assert_redirected_to talkresp_path(assigns(:talkresp))
  end

  test "should destroy talkresp" do
    assert_difference('Talkresp.count', -1) do
      delete :destroy, id: @talkresp
    end

    assert_redirected_to talkresps_path
  end
end
