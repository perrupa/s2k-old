require 'test_helper'

class VideoParticipantsControllerTest < ActionController::TestCase
  setup do
    @video_participant = video_participants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_participants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_participant" do
    assert_difference('VideoParticipant.count') do
      post :create, :video_participant => @video_participant.attributes
    end

    assert_redirected_to video_participant_path(assigns(:video_participant))
  end

  test "should show video_participant" do
    get :show, :id => @video_participant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @video_participant.to_param
    assert_response :success
  end

  test "should update video_participant" do
    put :update, :id => @video_participant.to_param, :video_participant => @video_participant.attributes
    assert_redirected_to video_participant_path(assigns(:video_participant))
  end

  test "should destroy video_participant" do
    assert_difference('VideoParticipant.count', -1) do
      delete :destroy, :id => @video_participant.to_param
    end

    assert_redirected_to video_participants_path
  end
end
