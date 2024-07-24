unit MultiCepClient.model.services.CEP;

interface
uses
  MultiCepClient.model.services.Interfaces,
  MultiCepClient.model.connections.Interfaces,
  MultiCepClient.model.entities.Endereco,
  System.SysUtils;

const
  BASEURL = 'http://localhost:9000';
type
  TMultiCepClientModelServicesCEPBase = class(TInterfacedObject, iModelServicesCEP)
    private
      FCodigo: String;
      FEndereco: TMultiCepClientModelEntitiesEndereco;
      FRest: iModelConnectionsRestRequest;
      FDisplay: TProc<TMultiCepClientModelEntitiesEndereco>;
      procedure TratarRetorno;
    public
      constructor Create(ARest: iModelConnectionsRestRequest);
      destructor Destroy; override;

      class function New(ARest: iModelConnectionsRestRequest): iModelServicesCEP;
      function Codigo(AValue: String): iModelServicesCEP;
      function Endereco: TMultiCepClientModelEntitiesEndereco;
      function Pesquisar: iModelServicesCEP;
      function Display(AValue: TProc<TMultiCepClientModelEntitiesEndereco>): iModelServicesCEP;
  end;

implementation

uses
  MultiCepClient.utils.Utilitarios,
  Rest.Json, System.JSON, MultiCepClient.model.exceptions.Rest,
  MultiCepClient.model.exceptions.CEP,
  MultiCepClient.helpers.CEPException;

{ TMultiCepClientModelServicesCEPBase }

function TMultiCepClientModelServicesCEPBase.Codigo(
  AValue: String): iModelServicesCEP;
begin
  Result := Self;
  TUtilitarios.ValidarCEP(AValue);
  FCodigo := AValue;
end;

constructor TMultiCepClientModelServicesCEPBase.Create(
  ARest: iModelConnectionsRestRequest);
begin
  FRest := ARest;
end;

destructor TMultiCepClientModelServicesCEPBase.Destroy;
begin
  if Assigned(FEndereco) then
    FreeAndNil(FEndereco);
  inherited;
end;

function TMultiCepClientModelServicesCEPBase.Display(
  AValue: TProc<TMultiCepClientModelEntitiesEndereco>): iModelServicesCEP;
begin
  Result := Self;
  FDisplay := AValue;
end;

function TMultiCepClientModelServicesCEPBase.Endereco: TMultiCepClientModelEntitiesEndereco;
begin
  if not Assigned(FEndereco) then
    FEndereco := TMultiCepClientModelEntitiesEndereco.Create;
  Result := FEndereco;
end;

class function TMultiCepClientModelServicesCEPBase.New(
  ARest: iModelConnectionsRestRequest): iModelServicesCEP;
begin
  Result := Self.Create(aRest);
end;

function TMultiCepClientModelServicesCEPBase.Pesquisar: iModelServicesCEP;
var
  LUri: String;
begin
  if not Assigned(FEndereco) then
    FEndereco := TMultiCepClientModelEntitiesEndereco.Create;

  try
    LUri := Format('%s/cep/%s', [BASEURL, FCodigo]);
    FEndereco.CEP := FCodigo;
    FRest
      .BaseUrl(LUri)
      .Send;
  except
    on E: ECustomRestException do
      raise ECEPException.Parse(E.StatusCode);
  end;

  TratarRetorno;

  if Assigned(FDisplay) then
    FDisplay(FEndereco);
end;

procedure TMultiCepClientModelServicesCEPBase.TratarRetorno;
var
  LJSON: TJSONObject;
  LStatus: Integer;

begin
  LJSON := FRest.Response.GetJSONObject;
  if Assigned(LJSON) then
  begin
    LStatus := LJSON.GetValue<Integer>('status', 400);
    if LStatus >= 400 then
      raise ECEPException.Parse(LStatus);

    TJSON.JsonToObject(FEndereco, FRest.Response.GetJSONObject, [joIndentCaseLower]);
  end;
end;

end.
