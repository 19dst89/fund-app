Rails.configuration.stripe = {
  # this should be set to ENV['PUBLISHABLE_KEY'] and ENV['SECRET_KEY'] once deployed for actual payments
  :publishable_key => Rails.application.secrets.stripe_publishable_key,
  :secret_key      => Rails.application.secrets.stripe_secret_key
}

Stripe.api_key = Rails.application.secrets.stripe_secret_key