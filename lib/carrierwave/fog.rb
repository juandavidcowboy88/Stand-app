CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAIBEYN6HLAOQG6AIA',                        # required unless using use_iam_profile
    aws_secret_access_key: 'BFPx10Hlfw/CmAKIujAA3bDkq1I3iwwhWt/WGVPZ+rA=',                        # required unless using use_iam_profile
    use_iam_profile:       true,                         # optional, defaults to false
    region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
    host:                  's3.example.com',             # optional, defaults to nil
    endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = '5incoapp-at-246634724645'                                      # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end
