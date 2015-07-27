json.array!(@recommendations) do |recommendation|
  json.extract! recommendation, :id, :company_name, :industry, :contact_name, :address, :phone, :email, :notes
  json.url recommendation_url(recommendation, format: :json)
end
