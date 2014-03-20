# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Sakila::Application.config.secret_key_base = '10214d757aa65aecb73d1b348aa6005ff2c17cae6871038b245ac43f6884119e6ec659f2d5b6976bc5421723438598fadbbd3ff4c5e4e652f464876095c215a0'
