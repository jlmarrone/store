json.array!(@clients) do |client|
  json.extract! client, :first_name, :last_name, :phone, :email, :address, :birthdate, :paymentdate
  json.url client_url(client, format: :json)
end