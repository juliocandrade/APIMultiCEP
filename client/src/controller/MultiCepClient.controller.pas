unit MultiCepClient.controller;

interface

uses
  MultiCepClient.model.services.interfaces,
  MultiCepClient.model.entities.Endereco;
type
  TEndereco = MultiCepClient.model.entities.Endereco.TMultiCepClientModelEntitiesEndereco;

  iController = interface
    ['{FE01D24D-134F-47EC-8DA2-C610902C12FE}']
    function Services: iModelServicesFactory;
  end;

  TMultiCepClientController = class (TInterfacedObject, iController)
    private
      FServices: iModelServicesFactory;
    public
      class function New: iController;
      function Services: iModelServicesFactory;
  end;
implementation

uses
  MultiCepClient.model.services.factory;

{ TMultiCepClientController }

class function TMultiCepClientController.New: iController;
begin
  Result := Self.Create;
end;

function TMultiCepClientController.Services: iModelServicesFactory;
begin
  if not assigned(FServices) then
    FServices := TMultiCepClientModelServicesFactory.New;
  Result := FServices;
end;

end.
