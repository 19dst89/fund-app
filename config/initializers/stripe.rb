Rails.configuration.stripe = {
  # this should be set to ENV['PUBLISHABLE_KEY'] and ENV['SECRET_KEY'] on GitHub
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]