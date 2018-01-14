defmodule Naglfar.Dogma.TypeEffect do
  use Ecto.Schema

  @primary_key false
  schema "dgmTypeEffects" do
    field :type_id, :integer, source: :typeID, primary_key: true
    field :effect_id, :integer, source: :effectID, primary_key: true
    field :is_default, :boolean, source: :isDefault
  end
end
