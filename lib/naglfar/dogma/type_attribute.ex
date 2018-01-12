defmodule Naglfar.Dogma.TypeAttribute do
  use Ecto.Schema

  @primary_key false
  schema "dgmTypeAttributes" do
    field :type_id, :integer, source: :typeID, primary_key: true
    field :attribute_id, :integer, source: :attributeID, primary_key: true
    field :value_int, :integer, source: :valueInt
    field :value_float, :float, source: :valueFloat
  end
end
