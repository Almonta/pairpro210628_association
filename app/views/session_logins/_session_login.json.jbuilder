json.extract! session_login, :id, :title, :content, :created_at, :updated_at
json.url session_login_url(session_login, format: :json)
