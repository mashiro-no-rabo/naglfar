defmodule NaglfarWeb.Resolvers.Dogma do
  alias Naglfar.Dogma

  def list_type_attributes(type, _, _) do
    {:ok, Dogma.list_type_attributes(type.type_id)}
  end

  def list_type_effects(type, _, _) do
    {:ok, Dogma.list_type_effects(type.type_id)}
  end

  def attribute(%Naglfar.Dogma.TypeAttribute{attribute_id: id}, _, _) do
    {:ok, Dogma.get_attribute(id)}
  end
  def attribute(_, _, _) do
    {:error, "unrecognized entry point for dogma attribute"}
  end

  def effect(%Naglfar.Dogma.TypeEffect{effect_id: id}, _, _) do
    {:ok, Dogma.get_effect(id)}
  end
  def effect(_, _, _) do
    {:error, "unrecognized entry point for dogma effect"}
  end

  def pre_expression(%Naglfar.Dogma.Effect{pre_expression: id}, _, _) do
    {:ok, Dogma.get_expression(id)}
  end
  def pre_expression(_, _, _) do
    {:error, "entrypoint for dogma expression not a dogma effect"}
  end

  def post_expression(%Naglfar.Dogma.Effect{post_expression: id}, _, _) do
    {:ok, Dogma.get_expression(id)}
  end
  def post_expression(_, _, _) do
    {:error, "entrypoint for dogma expression not a dogma effect"}
  end
end
