defmodule NaglfarWeb.Resolvers.Inventory do
  alias Naglfar.Inventory

  def inventory_types(_, args, _) do
    {:ok, Inventory.list_types(args)}
  end

  def inventory_type(_, %{id: id}, _) do
    {:ok, Inventory.type(id)}
  end

  def type_group(type, _, _) do
    {:ok, Inventory.group(type.group_id)}
  end

  def category(_, %{id: id}, %Absinthe.Resolution{context: %{loader: loader}}) do
    Inventory.load_category(loader, id)
  end

  def simple_cat(_, %{id: id}, _) do
    {:ok, Inventory.category(id)}
  end
end
