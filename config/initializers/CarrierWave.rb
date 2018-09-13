CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = '5incoapp'
  config.aws_acl    = 'public-read'

  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7

  config.aws_attributes = {
    expires: 1.week.from_now.httpdate,
    cache_control: 'max-age=604800'
  }

  config.aws_credentials = {
    access_key_id:     'AKIAJ2YPKY5N7PEUOHAQ',
    secret_access_key: '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',
    region:            "us-east-1", # Required

  }
end
