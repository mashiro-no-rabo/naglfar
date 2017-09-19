defmodule Naglfar.Inventory.Type do
  use Ecto.Schema

  @primary_key {:type_id, :id, source: :typeID}
  schema "invTypes" do
    field :group_id, :integer, source: :groupID
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
