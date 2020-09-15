json.extract! web_account, :id, :name, :email, :username, :password, :created_at, :updated_at
json.url web_account_url(web_account, format: :json)
