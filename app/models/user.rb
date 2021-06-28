class User < ApplicationRecord
  has_secure_password
  has_many :session_logins
  has_many :favorites, dependent: :destroy
end
