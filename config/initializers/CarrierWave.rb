
CarrierWave.config do |config|
  config.fog_credentials = {
    :provider => "AWS"
    :aws_access_key_id => "AKIAJIDDKLMONYWDDFUA "
    :aws_secret_access_key  => "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"
    :provider => "AWS"
     region: 'us-west-2'
  }

config.fog_directory = "5incoapp"
