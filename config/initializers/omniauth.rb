OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1551418221750339', '76a55494e9999278553b78cc8bd064d9'
end