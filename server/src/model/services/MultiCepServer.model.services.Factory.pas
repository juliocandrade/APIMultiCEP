unit MultiCepServer.model.services.Factory;

interface

uses
  MultiCepServer.model.services.Interfaces;
type
  TMultiCepServerModelServicesFactory = class(TInterfacedObject, iModelServicesFactory)
    private
    public
      class function New: iModelServicesFactory;
      function ServiceCEP: iModelServicesCEP;
  end;

implementation

uses
  MultiCepServer.model.services.CEP.Builder;

{ TMultiCepServerModelServicesFactory }

class function TMultiCepServerModelServicesFactory.New: iModelServicesFactory;
begin
  Result := Self.Create;
end;

function TMultiCepServerModelServicesFactory.ServiceCEP: iModelServicesCEP;
begin
  Result := TMultiCepServerModelServicesCEPBuilder.New.CEP;
end;

end.
