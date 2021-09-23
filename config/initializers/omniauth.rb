Rails.application.config.middleware.use OmniAuth::Builder do 
  if Rails.env.development? || Rails.env.test?
    provider :github, "5876e8ae28369661b696", "26554ae645a32c9f993f201b2d9b0dd12b4f8147"
  else
    provider :github, 
      Rails.application.credentials.github[:client_id], 
      Rails.application.credentials.github[:client_secret]
  end
end