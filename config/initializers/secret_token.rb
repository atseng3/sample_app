# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
     token_file = Rails.root.join('.secret')
     if File.exist?(token_file)
          # Use the exisiting token.
          File.read(token_file).chomp
     else
          # Generate a new token and store it in token_file.
          token = SecureRandom.hex(64)
          File.write(token_file, token)
          token
     end
end

SampleApp::Application.config.secret_key_base = 'ac661a224b80e5b92cf79ce88745c89042d6fa7c5d91f702784dcd68fdd5fbb5227ab39720b6108f9c4c72987380d94b32fc351e8f45548150b64bd3664b5a30'
