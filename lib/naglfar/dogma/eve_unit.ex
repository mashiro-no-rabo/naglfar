defmodule Naglfar.Dogma.EveUnit do
  use Ecto.Schema

  @primary_key {:unit_id, :id, source: :unitID}
  schema "eveUnits" do
    field :name, :string, source: :unitName
    field :display_name, :string, source: :displayName
    field :description, :string
  end
end
