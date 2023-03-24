# codegen: do not edit
defmodule GenLSP.Requests.TextDocumentCompletion do
  @moduledoc """
  Request to request completion at a given text document position. The request's
  parameter is of type {@link TextDocumentPosition} the response
  is of type {@link CompletionItem CompletionItem[]} or {@link CompletionList}
  or a Thenable that resolves to such.

  The request can delay the computation of the {@link CompletionItem.detail `detail`}
  and {@link CompletionItem.documentation `documentation`} properties to the `completionItem/resolve`
  request. However, properties that are needed for the initial sorting and filtering, like `sortText`,
  `filterText`, `insertText`, and `textEdit`, must not be changed during resolve.
  """

  import Schematic, warn: false

  use TypedStruct

  @derive Jason.Encoder
  typedstruct do
    field :method, String.t(), default: "textDocument/completion"
    field :jsonrpc, String.t(), default: "2.0"
    field :id, integer(), enforce: true
    field :params, GenLSP.Structures.CompletionParams.t()
  end

  @doc false
  @spec schematic() :: Schematic.t()
  def schematic() do
    schema(__MODULE__, %{
      method: str("textDocument/completion"),
      jsonrpc: str("2.0"),
      id: int(),
      params: GenLSP.Structures.CompletionParams.schematic()
    })
  end
end