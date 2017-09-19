defmodule Naglfar.Inventory do
  import Ecto.Query, warn: :false
  alias Naglfar.Repo
  alias Naglfar.Inventory.Type

  def list_types(_) do
    Repo.all(Type)
  end
end
