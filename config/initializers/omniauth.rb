OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '137981106562063', "a171bff92c5f3461c1d875bed94906da",  :scope => 'email,public_profile'
end