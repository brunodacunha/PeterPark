json.array!(@logins) do |login|
  json.extract! login, :id, :user, :senha
  json.url login_url(login, format: :json)
end
