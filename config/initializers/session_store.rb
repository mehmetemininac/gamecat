# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gamecat_session',
  :secret      => '0668df7424b2628ddeb109dc4a4b646d9fc04a7a77df815f2cc7f291a4c3ad7f80d6f633185fd2711a664568c67110f1626e2af5e221c352d4822768a549a985'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
