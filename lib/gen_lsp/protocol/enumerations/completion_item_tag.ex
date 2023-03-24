# codegen: do not edit
defmodule GenLSP.Enumerations.CompletionItemTag do
  @moduledoc """
  Completion item tags are extra annotations that tweak the rendering of a completion
  item.

  @since 3.15.0
  """

  @type t :: 1

  import Schematic, warn: false

  @doc """
  Render a completion as obsolete, usually using a strike-out.
  """
  @spec deprecated() :: 1
  def deprecated, do: 1

  @doc false
  @spec schematic() :: Schematic.t()
  def schematic() do
    oneof([
      int(1)
    ])
  end
end
