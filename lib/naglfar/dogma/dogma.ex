defmodule Naglfar.Dogma do
  import Ecto.Query, warn: false
  import Naglfar.Dataloader, only: :macros
  import Absinthe.Resolution.Helpers, only: [on_load: 2]

  alias Naglfar.Repo

  alias Naglfar.Dogma.{
    TypeAttribute,
    TypeEffect,
    Attribute,
    Effect,
    Expression,
    EveUnit,
    Operands
  }

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
    |> Dataloader.load(ecto_src(), Expression, id)
    |> on_load(fn loader ->
      expression = Dataloader.get(loader, ecto_src(), Expression, id)
      {:ok, expression}
    end)
  end

  def load_unit(loader, id) do
    loader
    |> Dataloader.load(ecto_src(), EveUnit, id)
    |> on_load(fn loader ->
      unit = Dataloader.get(loader, ecto_src(), EveUnit, id)
      {:ok, unit}
    end)
  end

  def load_operand(loader, id) do
    loader
    |> Dataloader.load(dogma_operands_src(), Operands, id)
    |> on_load(fn loader ->
      operand = Dataloader.get(loader, dogma_operands_src(), Operands, id)
      {:ok, operand}
    end)
  end
end
