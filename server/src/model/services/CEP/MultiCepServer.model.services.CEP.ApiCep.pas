unit MultiCepServer.model.services.CEP.ApiCep;

interface
uses
  MultiCepServer.model.services.CEP.Base;
type
  TMultiCepServerModelServicesCEPApiCep = class(TMultiCepServerModelServicesCEPBase)
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

{ TMultiCepServerModelServicesCEPApiCep }

function TMultiCepServerModelServicesCEPApiCep.GetUri: string;
begin
  Result := Format('https://ws.apicep.com/cep/%s.json', [FCodigo]);
end;

procedure TMultiCepServerModelServicesCEPApiCep.TratarRetorno;
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
    FEndereco.Logradouro := LJSON.valueAsString('address');
    FEndereco.Uf := LJSON.valueAsString('state');
  end;
end;

end.
