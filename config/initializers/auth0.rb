Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    '2vNAB70jlw7oj5QUaGbp6oVKQXM0T1kQ',
    'YOUR_CLIENT_SECRET',
    'sovereign.eu.auth0.com',
    callback_path: '/auth/oauth2/callback',
    authorize_params: {
      scope: 'openid profile'
    }
  )
end