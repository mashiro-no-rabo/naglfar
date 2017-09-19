use Mix.Config

config :naglfar, NaglfarWeb.Endpoint,
  http: [port: 4001],
  server: false

config :logger, level: :warn

config :naglfar, Naglfar.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "naglfar_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
