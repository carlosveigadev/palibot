CarrierWave.configure do |config|
  if Rails.env.staging? || Rails.env.production?
    config.fog_provider = ‘fog/aws’ 
    config.fog_credentials = {
      :provider => ‘AWS’,
      :aws_access_key_id => 'AKIA6Q73WVIUWEOHCCP5',
      :aws_secret_access_key => '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',
      :region => 'us-east-2'
    }
    config.fog_directory = palibot-blog
    config.storage = :fog
  else
    config.storage = :file
    config.enable_processing = Rails.env.development?
  end
end