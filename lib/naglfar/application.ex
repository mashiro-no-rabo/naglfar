defmodule Naglfar.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Naglfar.Repo, []),
      supervisor(NaglfarWeb.Endpoint, []),
    ]

    opts = [strategy: :one_for_one, name: Naglfar.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    NaglfarWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
