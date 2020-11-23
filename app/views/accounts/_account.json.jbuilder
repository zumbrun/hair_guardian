json.extract! account, :id, :first_name, :last_name, :street_address, :city, :state, :zip_code, :created_at, :updated_at
json.url account_url(account, format: :json)
