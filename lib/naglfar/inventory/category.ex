defmodule Naglfar.Inventory.Category do
  use Ecto.Schema
  alias Naglfar.Inventory.Group

  @primary_key {:category_id, :id, source: :categoryID}
  schema "invCategories" do
    field :name, :string, source: :categoryName
    field :icon_id, :integer, source: :iconID
    field :published, :boolean
  end
end
