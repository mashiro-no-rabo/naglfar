defmodule Naglfar.Dogma.Expression do
  use Ecto.Schema

  @primary_key {:expression_id, :id, source: :expressionID}
  schema "dgmExpressions" do
    field :operand_id, :integer, source: :operandID
    field :arg1, :integer
    field :arg2, :integer
    field :expression_value, :string, source: :expressionValue
    field :description, :string
    field :expression_name, :string, source: :expressionName
    field :expression_type_id, :integer, source: :expressionTypeID
    field :expression_group_id, :integer, source: :expressionGroupID
    field :expression_attribute_id, :integer, source: :expressionAttributeID
  end
end
