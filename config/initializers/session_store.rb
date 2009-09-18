# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_multiple_database_connections_session',
  :secret      => '379461c590affbd0050c8a9f0230e746aae3e2c70fe328258fee106cb577471e6433f3c0f15aead88ac4074ae1e2f25a5d99e7a0a9db754f3c1897ae87add331'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
