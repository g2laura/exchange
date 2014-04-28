# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Exchange::Application.config.secret_key_base = 'b0a648f41b82c5ab3b970565da6d7350a6eb99a744b135b0d49b5b24e7547ac33b637e36d5c9e88159655b54bceaf24ce1ef7019ecb0a6654137114d69e34b32'
