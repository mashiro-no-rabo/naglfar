defmodule Naglfar.Dogma do
  import Ecto.Query, warn: :false
  alias Naglfar.Repo
  alias Naglfar.Dogma.TypeAttribute

  def list_type_attributes(type_id) do
    Repo.all(from d in TypeAttribute, where: d.type_id == ^type_id)
  end
end
