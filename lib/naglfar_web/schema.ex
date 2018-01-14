defmodule Naglfar.Schema do
  use Absinthe.Schema

  alias NaglfarWeb.Resolvers

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

    field :dogma_attributes, list_of(:dogma_type_attribute) do
      resolve &Resolvers.Dogma.list_type_attributes/3
    end

    field :dogma_effects, list_of(:dogma_type_effect) do
      resolve &Resolvers.Dogma.list_type_effects/3
    end
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

  object :dogma_type_attribute do
    field :attribute, :dogma_attribute do
      resolve &Resolvers.Dogma.attribute/3
    end
    field :value_int, :integer
    field :value_float, :float
  end

  object :dogma_attribute do
    field :attribute_id, :id
    field :name, :string
    field :description, :string
    field :icon_id, :integer
    field :default_value, :float
    field :published, :boolean
    field :display_name, :string
    field :unit_id, :integer
    field :stackable, :boolean
    field :high_is_good, :boolean
    field :category_id, :integer
  end

  object :dogma_type_effect do
    field :type_id, :integer
    field :effect_id, :integer
    field :is_default, :boolean
  end
end
