defmodule NaglfarWeb.Resolvers.Dogma do
  alias Naglfar.Dogma

  def list_type_attributes(type, _, _) do
    {:ok, Dogma.list_type_attributes(type.type_id)}
  end

  def list_type_effects(type, _, _) do
    {:ok, Dogma.list_type_effects(type.type_id)}
  end

  def attribute(%Naglfar.Dogma.TypeAttribute{attribute_id: id} , _, _) do
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
end
