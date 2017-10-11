CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: 'ap-northeast-1',
    path_style: true
  }
  config.fog_public = true
  # config.fog_attributes = {'Cache-Control' => 'public, max-age=86400'}
  # config.remove_previously_stored_files_after_update = false
  # config.fog_directory = 'gootbucket'
  # config.asset_host = 's3-ap-northeast-1.amazonaws.com'


    case Rails.env
    when 'production'
      config.fog_directory = 'gootbucket'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/gootbucket'

    when 'development'
      config.fog_directory = 'gootbucket/dev'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/gootbucket/dev'

    when 'test'
      config.fog_directory = 'test.gootbucket/test'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/gootbucket/test'
  end
end

# 日本語の文字化けを防ぐ
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/