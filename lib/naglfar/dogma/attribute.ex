defmodule Naglfar.Dogma.Attribute do
  use Ecto.Schema

  @primary_key {:attribute_id, :id, source: :attributeID}
  schema "dgmAttributeTypes" do
    field :name, :string, source: :attributeName
    field :description, :string
    field :icon_id, :integer, source: :iconID
    field :default_value, :float, source: :defaultValue
    field :published, :boolean
    field :display_name, :string, source: :displayName
    field :unit_id, :integer, source: :unitID
    field :stackable, :boolean
    field :high_is_good, :boolean, source: :highIsGood
    field :category_id, :integer, source: :categoryID
  end
end
