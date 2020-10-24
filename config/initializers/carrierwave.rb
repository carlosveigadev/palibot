CarrierWave.configure do |config|
  if Rails.env.staging? || Rails.env.production?
    config.fog_provider = ‘fog/aws’ 
    config.fog_credentials = {
      :provider => ‘AWS’,
      access_key_id: Rails.application.credentials[:amazon][:key],
      secret_access_key: Rails.application.credentials[:amazon][:secret],
      :region => 'us-east-2'
    }
    config.fog_directory = palibot-blog
    config.storage = :fog
  else
    config.storage = :file
    config.enable_processing = Rails.env.development?
  end
end