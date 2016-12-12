json.extract! influencer, :id, :first_name, :last_name, :email, :phone, :created_at, :updated_at
json.url influencer_url(influencer, format: :json)