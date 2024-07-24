unit MultiCepClient.model.services.factory;

interface
uses
  MultiCepClient.model.services.interfaces;

type
  TMultiCepClientModelServicesFactory = class(TInterfacedObject, iModelServicesFactory)
    private
    public
      class function New: iModelServicesFactory;
      function ServiceCEP: iModelServicesCEP;
  end;

implementation

uses
  MultiCepClient.model.services.CEP, MultiCepClient.model.connections.Factory;

{ TMultiCepClientModelServicesFactory }

class function TMultiCepClientModelServicesFactory.New: iModelServicesFactory;
begin
  Result := Self.Create;
end;

function TMultiCepClientModelServicesFactory.ServiceCEP: iModelServicesCEP;
begin
  Result := TMultiCepClientModelServicesCEPBase.New(TMultiCepClientModelConnectionsFactory.New.ConnectionRest);
end;

end.
