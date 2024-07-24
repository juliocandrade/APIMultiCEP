unit MultiCepServer.model.services.CEP.Builder;

interface

uses
  MultiCepServer.model.services.Interfaces;
type
  TMultiCepServerModelServicesCEPBuilder = class(TInterfacedObject, iModelServicesCEPBuilder)
    private
      FCEP: iModelServicesCEP;
    public
      class function New: iModelServicesCEPBuilder;
      function CEP: iModelServicesCEP;
  end;
implementation

uses
  MultiCepServer.model.services.CEP.ViaCEP,
  MultiCepServer.model.services.CEP.AwesomeAPI,
  MultiCepServer.model.services.CEP.ApiCep,
  MultiCepServer.model.connections.Interfaces,
  MultiCepServer.model.connections.Factory;

{ TMultiCepServerModelServicesCEPBuilder }

function TMultiCepServerModelServicesCEPBuilder.CEP: iModelServicesCEP;
var
  LConnectionFactory: iModelConnectionsFactory;
begin
  LConnectionFactory := TMultiCepServerModelConnectionsFactory.New;

  if not Assigned(FCEP) then
    FCEP := TMultiCepServerModelServicesCEPViaCEP.New(LConnectionFactory.ConnectionRest,
            TMultiCepServerModelServicesCEPApiCep.New(LConnectionFactory.ConnectionRest,
            TMultiCepServerModelServicesCEPAwesomeAPI.New(LConnectionFactory.ConnectionRest,nil)));
  Result := FCEP;
end;

class function TMultiCepServerModelServicesCEPBuilder.New: iModelServicesCEPBuilder;
begin
  Result := Self.Create;
end;

end.
