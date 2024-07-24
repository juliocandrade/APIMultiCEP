unit MultiCepClient.model.services.interfaces;

interface
uses
  MultiCepClient.model.entities.Endereco,
  System.SysUtils;

type
  iModelServicesCEP = interface
    ['{D605782C-105D-40B6-9838-211BA344B4C9}']
    function Codigo(AValue: String): iModelServicesCEP;
    function Endereco: TMultiCepClientModelEntitiesEndereco;
    function Pesquisar: iModelServicesCEP;
    function Display(aValue: TProc<TMultiCepClientModelEntitiesEndereco>): iModelServicesCEP;
  end;

  iModelServicesFactory = interface
    ['{F25FF428-E794-4AB9-8C17-9BAC852AC215}']
    function ServiceCEP: iModelServicesCEP;
  end;

implementation

end.
