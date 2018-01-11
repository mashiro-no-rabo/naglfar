defmodule Naglfar.Resolvers.Inventory do
  alias Naglfar.Inventory

  def inventory_types(_, args, _) do
    {:ok, Inventory.list_types(args)}
  end

  def inventory_type(_, %{id: id}, _) do
    {:ok, Inventory.type(id)}
  end
end
