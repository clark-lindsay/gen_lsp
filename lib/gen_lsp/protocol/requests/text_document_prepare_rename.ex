# codegen: do not edit
defmodule GenLSP.Requests.TextDocumentPrepareRename do
  @moduledoc """
  A request to test and perform the setup necessary for a rename.

  @since 3.16 - support for default behavior
  """

  import Schematic, warn: false

  use TypedStruct

  @derive Jason.Encoder
  typedstruct do
    field :method, String.t(), default: "textDocument/prepareRename"
    field :jsonrpc, String.t(), default: "2.0"
    field :id, integer(), enforce: true
    field :params, GenLSP.Structures.PrepareRenameParams.t()
  end

  @doc false
  @spec schematic() :: Schematic.t()
  def schematic() do
    schema(__MODULE__, %{
      method: str("textDocument/prepareRename"),
      jsonrpc: str("2.0"),
      id: int(),
      params: GenLSP.Structures.PrepareRenameParams.schematic()
    })
  end
end
