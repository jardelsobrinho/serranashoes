# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_serranashoes_session',
  :secret      => '196576d753dc43d87b3767f28feed6488aa2d2c14e2332d8d193a3f2b387dd97c1c056c27dd0a0db5031665aa59d803e5b8ff493fec14dfdedf7ec5b63530614'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
