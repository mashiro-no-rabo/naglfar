defmodule Naglfar.Dogma.Effect do
  use Ecto.Schema

  @primary_key {:effect_id, :id, source: :effectID}
  schema "dgmEffects" do
    field :name, :string, source: :effectName
    field :description, :string
    field :effect_category_id, :integer, source: :effectCategory
    field :pre_expression, :integer, source: :preExpression
    field :post_expression, :integer, source: :postExpression
    field :guid, :string
    field :icon_id, :integer, source: :iconID
    field :is_offensive, :boolean, source: :isOffensive
    field :is_assistance, :boolean, source: :isAssistance
    field :duration_attribute_id, :integer, source: :durationAttributeID
    field :tracking_speed_attribute_id, :integer, source: :trackingSpeedAttributeID
    field :discharge_attribute_id, :integer, source: :dischargeAttributeID
    field :range_attribute_id, :integer, source: :rangeAttributeID
    field :falloff_attribute_id, :integer, source: :falloffAttributeID
    field :disallow_auto_repeat, :boolean, source: :disallowAutoRepeat
    field :published, :boolean
    field :display_name, :string, source: :displayName
    field :is_warp_safe, :boolean, source: :isWarpSafe
    field :range_chance, :boolean, source: :rangeChance
    field :electronic_chance, :boolean, source: :electronicChance
    field :propulsion_chance, :boolean, source: :propulsionChance
    field :distribution, :integer
    field :sfx_name, :string, source: :sfxName
    field :npc_usage_chance_attribute_id, :integer, source: :npcUsageChanceAttributeID
    field :npc_activation_chance_attribute_id, :integer, source: :npcActivationChanceAttributeID
    field :fitting_usage_chance_attribute_id, :integer, source: :fittingUsageChanceAttributeID
    field :modifier_info, :string, source: :modifierInfo
  end
end
