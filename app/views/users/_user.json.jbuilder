json.extract! user, :id, :username, :email, :password, :admin
json.url user_url(user, format: :json)
