unit MultiCepServer.model.services.Interfaces;

interface

uses
  MultiCepServer.model.entities.Endereco;

type
  iModelServicesCEP = interface
    ['{D605782C-105D-40B6-9838-211BA344B4C9}']
    function Codigo(AValue: String): iModelServicesCEP;
    function Endereco: TMultiCepServerModelEntitiesEndereco;
    function Pesquisar: TMultiCepServerModelEntitiesEndereco;
  end;

  iModelServicesCEPBuilder = interface
    ['{32631762-90B8-4702-826E-1D811F194C88}']
    function CEP: iModelServicesCEP;
  end;

  iModelServicesFactory = interface
    ['{8B04876D-EF33-4DD3-B5B6-6487B244FD17}']
    function ServiceCEP: iModelServicesCEP;
  end;
implementation

end.
