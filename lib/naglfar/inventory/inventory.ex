defmodule Naglfar.Inventory do
  import Ecto.Query, warn: false
  import Naglfar.Dataloader, only: :macros
  import Absinthe.Resolution.Helpers, only: [on_load: 2]

  alias Naglfar.Repo
  alias Naglfar.Inventory.{Type, Group, Category}

  def list_types(_) do
    Repo.all(Type)
  end

  def type(id) do
    query = from t in Type, where: t.type_id == ^id
    Repo.one(query)
  end

  def group(id) do
    query = from g in Group, where: g.group_id == ^id
    Repo.one(query)
  end

  def load_category(loader, id) do
    loader
    |> Dataloader.load(ecto_src(), Category, id)
    |> on_load(fn loader ->
      category = Dataloader.get(loader, ecto_src(), Category, id)
      {:ok, category}
    end)
  end

  def category(id) do
    query = from c in Category, where: c.category_id == ^id
    Repo.one(query)
  end

  def groups_of_category(id) do
    query = from g in Group, where: g.category_id == ^id
    Repo.all(query)
  end

  def types_of_group(id) do
    query = from t in Type, where: t.group_id == ^id
    Repo.all(query)
  end
end
