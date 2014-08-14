require 'test_helper'

class LogpostsControllerTest < ActionController::TestCase
  setup do
    @logpost = logposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logpost" do
    assert_difference('Logpost.count') do
      post :create, logpost: { content: @logpost.content, date: @logpost.date, user_mail: @logpost.user_mail }
    end

    assert_redirected_to logpost_path(assigns(:logpost))
  end

  test "should show logpost" do
    get :show, id: @logpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logpost
    assert_response :success
  end

  test "should update logpost" do
    patch :update, id: @logpost, logpost: { content: @logpost.content, date: @logpost.date, user_mail: @logpost.user_mail }
    assert_redirected_to logpost_path(assigns(:logpost))
  end

  test "should destroy logpost" do
    assert_difference('Logpost.count', -1) do
      delete :destroy, id: @logpost
    end

    assert_redirected_to logposts_path
  end
end
