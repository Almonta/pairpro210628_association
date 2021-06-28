class AddUserRefToSessionLogins < ActiveRecord::Migration[5.2]
  def change
    add_reference :session_logins, :user, foreign_key: true, null: false
  end
end
