# codegen: do not edit
defmodule GenLSP.Structures.PrepareRenameParams do
  import Schematic, warn: false

  use TypedStruct

  @doc """
  ## Fields

  * work_done_token: An optional token that a server can use to report work done progress.
  * text_document: The text document.
  * position: The position inside the text document.
  """
  @derive Jason.Encoder
  typedstruct do
    field :work_done_token, GenLSP.TypeAlias.ProgressToken.t()
    field :text_document, GenLSP.Structures.TextDocumentIdentifier.t(), enforce: true
    field :position, GenLSP.Structures.Position.t(), enforce: true
  end

  @doc false
  @spec schematic() :: Schematic.t()
  def schematic() do
    schema(__MODULE__, %{
      {"workDoneToken", :work_done_token} =>
        oneof([null(), GenLSP.TypeAlias.ProgressToken.schematic()]),
      {"textDocument", :text_document} => GenLSP.Structures.TextDocumentIdentifier.schematic(),
      {"position", :position} => GenLSP.Structures.Position.schematic()
    })
  end
end
