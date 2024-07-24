unit MultiCepClient.model.connections.Factory;

interface

uses
  MultiCepClient.model.connections.Interfaces;
type
  TMultiCepClientModelConnectionsFactory = class(TInterfacedObject, iModelConnectionsFactory)
    private
    public
      class function New: iModelConnectionsFactory;
      function ConnectionRest: iModelConnectionsRestRequest;
  end;

implementation

uses
  MultiCepClient.model.connections.RestRequest;

{ TMultiCepClientModelConnectionsFactory }

function TMultiCepClientModelConnectionsFactory.ConnectionRest: iModelConnectionsRestRequest;
begin
  Result := TMultiCepServerModelConnectionsRestRequest.New;
end;

class function TMultiCepClientModelConnectionsFactory.New: iModelConnectionsFactory;
begin
  Result := Self.Create;
end;

end.
