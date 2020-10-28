CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                            # required
    aws_access_key_id:     ENV["access_key_id"],            # required
    aws_secret_access_key: ENV["secret_access_key"],            # required
    region:                'us-east-2'                       # to match the carrierwave and bucket region
  }

  config.fog_directory = 'palibot-blog'                  # required
  config.fog_public    = false
  config.cache_dir     = "#{Rails.root}/tmp/uploads"         # To let CarrierWave work on Heroku
  config.storage       = :fog
end