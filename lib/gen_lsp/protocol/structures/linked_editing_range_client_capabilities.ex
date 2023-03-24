# codegen: do not edit
defmodule GenLSP.Structures.LinkedEditingRangeClientCapabilities do
  @moduledoc """
  Client capabilities for the linked editing range request.

  @since 3.16.0
  """

  import Schematic, warn: false

  use TypedStruct

  @doc """
  ## Fields

  * dynamic_registration: Whether implementation supports dynamic registration. If this is set to `true`
    the client supports the new `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`
    return value for the corresponding server capability as well.
  """
  @derive Jason.Encoder
  typedstruct do
    field :dynamic_registration, boolean()
  end

  @doc false
  @spec schematic() :: Schematic.t()
  def schematic() do
    schema(__MODULE__, %{
      {"dynamicRegistration", :dynamic_registration} => oneof([null(), bool()])
    })
  end
end