defmodule Naglfar.Mixfile do
  use Mix.Project

  def project do
    [
      app: :naglfar,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps(),
    ]
  end

  def application do
    [
      mod: {Naglfar.Application, []},
      extra_applications: [:logger, :runtime_tools],
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps do
    [
      {:phoenix, "~> 1.3.0"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_ecto, "~> 3.2"},
      {:postgrex, ">= 0.0.0"},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:poison, "~> 3.0", override: true},
      {:absinthe, "~> 1.4.0-beta or ~> 1.4.0-rc or ~> 1.4.0", override: true},
      {:absinthe_plug, "~> 1.4.0-beta or ~> 1.4.0-rc or ~> 1.4.0", override: true},
      {:absinthe_phoenix, "~> 1.4.0-beta or ~> 1.4.0-rc or ~> 1.4.0", override: true},
      {:absinthe_relay, "~> 1.4.0-beta or ~> 1.4.0-rc or ~> 1.4.0 or ~> 1.3.0", override: true},
    ]
  end

  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      "test": ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
