unit MultiCepServer.controller;

interface

uses
  MultiCepServer.model.services.Interfaces;
type
  iController = interface
    ['{287A88F6-27A9-4F55-A520-7EB5CD553CB6}']
    function Services: iModelServicesFactory;
  end;

  TMultiCepServerController = class (TInterfacedObject, iController)
    private
      FServices: iModelServicesFactory;
    public
      class function New: iController;
      function Services: iModelServicesFactory;
  end;
implementation

uses
  MultiCepServer.model.services.Factory;

{ TMultiCepServerController }

class function TMultiCepServerController.New: iController;
begin
  Result := Self.Create;
end;

function TMultiCepServerController.Services: iModelServicesFactory;
begin
  if not assigned(FServices) then
    FServices := TMultiCepServerModelServicesFactory.New;
  Result := FServices;
end;

end.
