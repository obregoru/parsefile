# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_parsefile_session',
  :secret      => '9f34b4e749217b019245b09c56f14646fccd0028ee50609a438a7bb930bc1c6f0b3503904f3026c4dc10bf29fa8198deb42032ddc7d86c1772cbacd31a0dee7a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
