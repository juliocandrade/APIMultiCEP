unit MultiCepServer.model.connections.Factory;

interface

uses
  MultiCepServer.model.connections.Interfaces,
  MultiCepServer.model.connections.RestClient;
type
  TMultiCepServerModelConnectionsFactory = class(TInterfacedObject, iModelConnectionsFactory)
    private
    public
      class function New: iModelConnectionsFactory;
      function ConnectionRest: iModelConnectionsRestRequest;
  end;
implementation

{ TMultiCepServerModelConnectionsFactory }

function TMultiCepServerModelConnectionsFactory.ConnectionRest: iModelConnectionsRestRequest;
begin
  Result := TMultiCepServerModelConnectionsRestClient.New;
end;

class function TMultiCepServerModelConnectionsFactory.New: iModelConnectionsFactory;
begin
  Result := Self.Create;
end;

end.
