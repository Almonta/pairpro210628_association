require "application_system_test_case"

class SessionLoginsTest < ApplicationSystemTestCase
  setup do
    @session_login = session_logins(:one)
  end

  test "visiting the index" do
    visit session_logins_url
    assert_selector "h1", text: "Session Logins"
  end

  test "creating a Session login" do
    visit session_logins_url
    click_on "New Session Login"

    fill_in "Content", with: @session_login.content
    fill_in "Title", with: @session_login.title
    click_on "Create Session login"

    assert_text "Session login was successfully created"
    click_on "Back"
  end

  test "updating a Session login" do
    visit session_logins_url
    click_on "Edit", match: :first

    fill_in "Content", with: @session_login.content
    fill_in "Title", with: @session_login.title
    click_on "Update Session login"

    assert_text "Session login was successfully updated"
    click_on "Back"
  end

  test "destroying a Session login" do
    visit session_logins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Session login was successfully destroyed"
  end
end
