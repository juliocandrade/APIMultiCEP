unit MultiCepServer.model.services.CEP.Base;

interface

uses
  MultiCepServer.model.services.Interfaces,
  MultiCepServer.model.connections.Interfaces,
  MultiCepServer.model.entities.Endereco;
type
  TMultiCepServerModelServicesCEPBase = class(TInterfacedObject, iModelServicesCEP)
    private
      FDecorator: iModelServicesCEP;
    protected
      FCodigo: String;
      FEndereco: TMultiCepServerModelEntitiesEndereco;
      FRest: iModelConnectionsRestRequest;
      function GetUri: string; virtual; abstract;
      procedure TratarRetorno; virtual; abstract;
    public
      constructor Create(ARest: iModelConnectionsRestRequest; ADecorator: iModelServicesCEP);
      destructor Destroy; override;

      class function New(ARest: iModelConnectionsRestRequest; ADecorator: iModelServicesCEP): iModelServicesCEP;
      function Codigo(AValue: String): iModelServicesCEP;
      function Endereco: TMultiCepServerModelEntitiesEndereco;
      function Pesquisar: TMultiCepServerModelEntitiesEndereco;
  end;
implementation

uses
  System.SysUtils,
  MultiCepServer.utils.Utilitarios,
  MultiCepServer.model.exceptions.Rest,
  MultiCepServer.model.exceptions.CEP,
  MultiCepServer.helpers.CEPException;

{ TMultiCepServerModelServicesCEPBase }

function TMultiCepServerModelServicesCEPBase.Codigo(
  AValue: String): iModelServicesCEP;
begin
  Result := Self;
  TUtilitarios.ValidarCEP(AValue);
  FCodigo := AValue;
end;

constructor TMultiCepServerModelServicesCEPBase.Create(
  ARest: iModelConnectionsRestRequest; ADecorator: iModelServicesCEP);
begin
  FRest := ARest;

  if Assigned(ADecorator) then
    FDecorator := ADecorator;
end;

destructor TMultiCepServerModelServicesCEPBase.Destroy;
begin
  if Assigned(FEndereco) then
    FreeAndNil(FEndereco);
  inherited;
end;

function TMultiCepServerModelServicesCEPBase.Endereco: TMultiCepServerModelEntitiesEndereco;
begin
  if not Assigned(FEndereco) then
    FEndereco := TMultiCepServerModelEntitiesEndereco.Create;
  Result := FEndereco;
end;

class function TMultiCepServerModelServicesCEPBase.New(
  ARest: iModelConnectionsRestRequest;
  ADecorator: iModelServicesCEP): iModelServicesCEP;
begin
  Result := Self.Create(ARest, ADecorator);
end;

function TMultiCepServerModelServicesCEPBase.Pesquisar: TMultiCepServerModelEntitiesEndereco;
begin
  try
    if not Assigned(FEndereco) then
      FEndereco := TMultiCepServerModelEntitiesEndereco.Create;

    FEndereco.CEP := FCodigo;
    FRest
      .BaseUrl(GetUri)
      .Send;

    TratarRetorno;
  except
    on E: ECustomRestException do
    begin
      if not Assigned(FDecorator) then
        raise ECEPException.Parse(e.StatusCode);

      FDecorator
        .Codigo(FCodigo)
        .Pesquisar;

      TUtilitarios
        .CloneObjectProperties<TMultiCepServerModelEntitiesEndereco>(FDecorator.Endereco, FEndereco);
    end;
  end;
  Result := FEndereco;
end;

end.
