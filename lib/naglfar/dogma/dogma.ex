defmodule Naglfar.Dogma do
  import Ecto.Query, warn: false
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
end
