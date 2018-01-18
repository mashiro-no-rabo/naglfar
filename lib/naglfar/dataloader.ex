defmodule Naglfar.Dataloader do
  @moduledoc """
  Defines dataloader setup within Naglfar context.
  """

  def ecto_src_name() do
    __MODULE__.Ecto
  end

  def ecto_src() do
    Dataloader.Ecto.new(Naglfar.Repo)
  end
end
