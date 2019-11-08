json.extract! mail_user, :id, :name, :email, :login, :created_at, :updated_at
json.url mail_user_url(mail_user, format: :json)
