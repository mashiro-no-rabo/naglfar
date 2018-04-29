defmodule Naglfar.Dogma.EveUnit do
  use Ecto.Schema

  @primary_key false
  schema "eveUnits" do
    field :unit_id, :integer, source: :unitID, primary_key: true
    field :name, :string, source: :unitName
    field :display_name, :string, source: :displayName
    field :description, :string
  end
end
