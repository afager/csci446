# Be sure to restart your server when you modify this file.

Depot::Application.config.session_store :cookie_store, :key => '_depot_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
Depot::Application.config.session_store :active_record_store

Depot::Application.config.action_controller.session = {
:session_key => '_depot_session' ,
:secret => 'f914e9b1bbdb829688de8512f...9b1810a4e238a61dfd922dc9dd62521'
}