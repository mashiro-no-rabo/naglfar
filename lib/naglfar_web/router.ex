defmodule NaglfarWeb.Router do
  use NaglfarWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug,
      schema: Naglfar.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: Naglfar.Schema,
      interface: :simple
  end
end
