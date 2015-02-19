Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'xgSKjO7S71kO9OBXBYRtzbjBDJP1aB1n',
    'qkj1bgoLwSw4x7B3CXlvZJJLGz-I72Zf6HX_wOCbqdOzVPBHobe0FoT_klmoNEzu',
    'app34086970.auth0.com',
    callback_path: "/auth/auth0/callback"
  )
end