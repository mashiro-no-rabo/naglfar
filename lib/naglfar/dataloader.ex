defmodule Naglfar.Dataloader do
  @moduledoc """
  Defines dataloader setup within Naglfar context.
  """

  defmacro ecto_src, do: __MODULE__.Ecto
  defmacro dogma_operands_src, do: __MODULE__.DogmaOperands

  def new() do
    Dataloader.new()
    |> Dataloader.add_source(ecto_src(), Dataloader.Ecto.new(Naglfar.Repo))
    |> Dataloader.add_source(
      dogma_operands_src(),
      Dataloader.KV.new(&Naglfar.Dogma.Operands.dataloader_load_func/2)
    )
  end
end
