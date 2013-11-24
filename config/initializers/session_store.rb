# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_app_demo_session',
  :secret      => '88781f5cb6aaa672a6ee848fe360ac0ffe5d2c1544f5ccb5ea4e1bb1c0efead73aea70e011bef21aa238931befc4c5517244e1ad71b81fc8a92f6b996acecf49'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
