# codegen: do not edit
defmodule GenLSP.Enumerations.ResourceOperationKind do
  @type t :: String.t()

  import Schematic, warn: false

  @doc """
  Supports creating new files and folders.
  """
  @spec create() :: String.t()
  def create, do: "create"

  @doc """
  Supports renaming existing files and folders.
  """
  @spec rename() :: String.t()
  def rename, do: "rename"

  @doc """
  Supports deleting existing files and folders.
  """
  @spec delete() :: String.t()
  def delete, do: "delete"

  @doc false
  @spec schematic() :: Schematic.t()
  def schematic() do
    oneof([
      str("create"),
      str("rename"),
      str("delete")
    ])
  end
end
