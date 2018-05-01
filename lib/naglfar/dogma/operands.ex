defmodule Naglfar.Dogma.Operands do
  @operands "priv/dgmOperands.json" |> File.read!() |> Jason.decode!()

  def dataloader_load_func(_, ids) do
    ids
    |> Enum.map(fn id ->
      {id, Map.get(@operands, "#{id}")}
    end)
    |> Enum.into(%{})
  end
end
