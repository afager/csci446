# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Game_session',
  :secret      => 'a83c0f2e5ea515aa5fe5e927e2a635dc4f9e8536bd2f1124efc9b7a6fdd2129b45e52859fcef022b0293b638e97671411fbe10f0619fccaff824255074a791c4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
