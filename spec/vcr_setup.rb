require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'vcr_cassettes'
  c.hook_into :webmock
  c.ignore_localhost = true
  c.configure_rspec_metadata!

  one_week = 60 * 60 * 24 * 7
  c.default_cassette_options = { re_record_interval: one_week }
end
