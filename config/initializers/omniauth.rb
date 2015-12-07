OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '137981106562063', "a171bff92c5f3461c1d875bed94906da",  
  {
  scope: 'email,public_profile',
  image_size: {width: 150, height: 150},
  }
end



# Rails.application.config.middleware.use OmniAuth::Builder do
# provider :facebook, "APP_ID", "SECRET_KEY",
# {
# scope: 'email,public_profile,user_location,user_birthday,user_about_me',
# image_size: {width: 400, height: 400},
# info_fields: 'name,email'
# }
# end