use Mix.Config

config :naglfar, ecto_repos: [Naglfar.Repo]

config :naglfar, NaglfarWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6vfyq04HXKW6k2DiMAkl2VlA62njBe53MPCEr9QV/2huvPwZ6EZj/7EGw0RKjA0w",
  render_errors: [view: NaglfarWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Naglfar.PubSub, adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

import_config "#{Mix.env()}.exs"
