defmodule Naglfar.Resolvers.Inventory do
  alias Naglfar.{Inventory, Dogma}

  def inventory_types(_, args, _) do
    {:ok, Inventory.list_types(args)}
  end

  def inventory_type(_, %{id: id}, _) do
    {:ok, Inventory.type(id)}
  end

  def type_group(type, _, _) do
    {:ok, Inventory.group(type.group_id)}
  end

  def type_dogma_attributes(type, _, _) do
    {:ok, Dogma.list_type_attributes(type.type_id)}
  end
end
