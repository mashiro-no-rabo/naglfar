defmodule Naglfar.Schema do
  use Absinthe.Schema

  alias Naglfar.Resolvers

  query do
    field :types, list_of(:inventory_type) do
      resolve &Resolvers.Inventory.inventory_types/3
    end

    field :type, :inventory_type do
      arg :id, :id
      resolve &Resolvers.Inventory.inventory_type/3
    end
  end

  object :inventory_type do
    field :type_id, :id
    field :group, :inventory_group do
      resolve &Resolvers.Inventory.type_group/3
    end
    field :name, :string
    field :description, :string
    field :mass, :float
    field :volume, :float
    field :capacity, :float
    field :portion_size, :integer
    field :race_id, :integer
    field :published, :boolean
    field :market_group_id, :integer
    field :icon_id, :integer
    field :sound_id, :integer
    field :graphic_id, :integer
  end

  object :inventory_group do
    field :group_id, :id
    field :category_id, :integer
    field :name, :string
    field :icon_id, :integer
    field :use_base_price, :boolean
    field :anchored, :boolean
    field :anchorable, :boolean
    field :fittable_non_singleton, :boolean
    field :published, :boolean
  end
end
