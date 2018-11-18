use Mix.Config

config :kernel, inet_dist_use_interface: {127, 0, 0, 1}

config :logger,
  handle_otp_reports: true,
  handle_sasl_reports: true

import_config "#{Mix.env()}.exs"
