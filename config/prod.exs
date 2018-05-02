use Mix.Config

config :naglfar, NaglfarWeb.Endpoint,
  http: [port: 4000, ip: {127, 0, 0, 1}]

config :logger, level: :info

import_config "prod.secret.exs"
