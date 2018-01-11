defmodule Naglfar.Inventory do
  import Ecto.Query, warn: :false
  alias Naglfar.Repo
  alias Naglfar.Inventory.Type

  def list_types(_) do
    Repo.all(Type)
  end

  def type(id) do
    query = from t in Type, where: t.type_id == ^id
    Repo.one(query)
  end
end
