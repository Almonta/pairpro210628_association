require 'test_helper'

class SessionLoginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @session_login = session_logins(:one)
  end

  test "should get index" do
    get session_logins_url
    assert_response :success
  end

  test "should get new" do
    get new_session_login_url
    assert_response :success
  end

  test "should create session_login" do
    assert_difference('SessionLogin.count') do
      post session_logins_url, params: { session_login: { content: @session_login.content, title: @session_login.title } }
    end

    assert_redirected_to session_login_url(SessionLogin.last)
  end

  test "should show session_login" do
    get session_login_url(@session_login)
    assert_response :success
  end

  test "should get edit" do
    get edit_session_login_url(@session_login)
    assert_response :success
  end

  test "should update session_login" do
    patch session_login_url(@session_login), params: { session_login: { content: @session_login.content, title: @session_login.title } }
    assert_redirected_to session_login_url(@session_login)
  end

  test "should destroy session_login" do
    assert_difference('SessionLogin.count', -1) do
      delete session_login_url(@session_login)
    end

    assert_redirected_to session_logins_url
  end
end
