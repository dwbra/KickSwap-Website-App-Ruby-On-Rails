# Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)

puts "api_key from credentials:"
p Rails.application.credentials.dig(:stripe, :secret_key)
Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)
puts "api_key on Stripe module:"
p Stripe.api_key