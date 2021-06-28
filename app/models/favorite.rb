class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :session_login
end
