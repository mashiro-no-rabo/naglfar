defmodule Naglfar.Inventory.Type do
  use Ecto.Schema
  alias Naglfar.Inventory.Group

  @primary_key {:type_id, :id, source: :typeID}
  schema "invTypes" do
    belongs_to :group, Group, source: :groupID, references: :group_id
    field :name, :string, source: :typeName
    field :description, :string
    field :mass, :float
    field :volume, :float
    field :capacity, :float
    field :portion_size, :integer, source: :portionSize
    field :race_id, :integer, source: :raceID
    field :base_price, :decimal, source: :basePrice
    field :published, :boolean
    field :market_group_id, :integer, source: :marketGroupID
    field :icon_id, :integer, source: :iconID
    field :sound_id, :integer, source: :soundID
    field :graphic_id, :integer, source: :graphicID
  end
end
