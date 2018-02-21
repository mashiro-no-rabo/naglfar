defmodule NaglfarWeb.Router do
  use NaglfarWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug,
      schema: Naglfar.Schema,
      json_encoder: Jason

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: Naglfar.Schema,
      json_codec: Jason,
      interface: :simple
  end
end
