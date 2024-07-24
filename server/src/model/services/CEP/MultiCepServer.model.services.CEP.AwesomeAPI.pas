unit MultiCepServer.model.services.CEP.AwesomeAPI;

interface
uses
  MultiCepServer.model.services.CEP.Base;
type
  TMultiCepServerModelServicesCEPAwesomeAPI = class(TMultiCepServerModelServicesCEPBase)
    protected
      procedure TratarRetorno; override;
      function GetUri: string; override;
  end;

implementation

uses
  System.JSON,
  System.SysUtils,
  MultiCepServer.helpers.JSON,
  MultiCepServer.model.exceptions.Rest;

{ TMultiCepServerModelServicesCEPAwesomeAPI }

function TMultiCepServerModelServicesCEPAwesomeAPI.GetUri: string;
begin
  Result := Format('https://cep.awesomeapi.com.br/json/%s', [FCodigo]);
end;

procedure TMultiCepServerModelServicesCEPAwesomeAPI.TratarRetorno;
var
  LJSON: TJSONObject;
  LStatus: Integer;
begin
  LJSON := FRest.Response.GetJSONObject;
  if Assigned(LJSON) then
  begin
    LStatus := LJSON.valueAsInteger('status');
    if LStatus >= 400 then
      raise ECustomRestException.Create(LStatus, LJSON.ValueAsString('message'), '',  nil);

    FEndereco.Bairro := LJSON.valueAsString('district');
    FEndereco.Cidade := LJSON.valueAsString('city');
    FEndereco.DDD := LJSON.valueAsInteger('ddd');
    FEndereco.CodigoIBGE := LJSON.valueAsInteger('city_ibge');
    FEndereco.Logradouro := LJSON.valueAsString('address');
    FEndereco.Uf := LJSON.valueAsString('state');
    FEndereco.TipoEndereco := LJSON.valueAsString('address_type');
    FEndereco.Latitude := LJSON.ValueAsFloat('lat');
    FEndereco.Longitude := LJSON.ValueAsFloat('lng');
  end;
end;

end.
