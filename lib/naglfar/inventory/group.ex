defmodule Naglfar.Inventory.Group do
  use Ecto.Schema

  @primary_key {:group_id, :id, source: :groupID}
  schema "invGroups" do
    field :category_id, :integer, source: :categoryID
    field :name, :string, source: :groupName
    field :icon_id, :integer, source: :iconID
    field :use_base_price, :boolean, source: :useBasePrice
    field :anchored, :boolean
    field :anchorable, :boolean
    field :fittable_non_singleton, :boolean, source: :fittableNonSingleton
    field :published, :boolean
  end
end
