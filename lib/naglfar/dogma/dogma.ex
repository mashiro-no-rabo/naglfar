defmodule Naglfar.Dogma do
  import Ecto.Query, warn: false
  import Naglfar.Dataloader, only: [ecto_src_name: 0]
  import Absinthe.Resolution.Helpers, only: [on_load: 2]

  alias Naglfar.Repo
  alias Naglfar.Dogma.{TypeAttribute, TypeEffect, Attribute, Effect, Expression}

  def list_type_attributes(type_id) do
    Repo.all(from ta in TypeAttribute, where: ta.type_id == ^type_id)
  end

  def list_type_effects(type_id) do
    Repo.all(from te in TypeEffect, where: te.type_id == ^type_id)
  end

  def get_attribute(id) do
    Repo.one(from a in Attribute, where: a.attribute_id == ^id)
  end

  def get_effect(id) do
    Repo.one(from e in Effect, where: e.effect_id == ^id)
  end

  def get_expression(id) do
    Repo.one(from e in Expression, where: e.expression_id == ^id)
  end

  def load_expression(loader, id) do
    loader
    |> Dataloader.load(ecto_src_name(), Expression, id)
    |> on_load(fn loader ->
      expression = Dataloader.get(loader, ecto_src_name(), Expression, id)
      {:ok, expression}
    end)
  end
end
