defmodule Naglfar.Dogma.Effect do
  use Ecto.Schema

  @primary_key {:effect_id, :id, source: :effectID}
  schema "dgmEffects" do
    field :name, :string, source: :effectName
    field :description, :string
  end
end
