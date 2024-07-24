unit MultiCepServer.model.services.CEP.ViaCEP;

interface
uses
  MultiCepServer.model.services.CEP.Base;
type
  TMultiCepServerModelServicesCEPViaCEP = class(TMultiCepServerModelServicesCEPBase)
    protected
      procedure TratarRetorno; override;
      function GetUri: string; override;
  end;
implementation

uses
  System.JSON,
  System.SysUtils,
  MultiCepServer.helpers.JSON, MultiCepServer.model.exceptions.Rest;

{ TMultiCepServerModelServicesCEPViaCEP }

function TMultiCepServerModelServicesCEPViaCEP.GetUri: string;
begin
  Result := Format('https://viacep.com.br/ws/%s/json/', [FCodigo]);
end;

procedure TMultiCepServerModelServicesCEPViaCEP.TratarRetorno;
var
  LJSON: TJSONObject;
  LError: Boolean;
begin
  LJSON := FRest.Response.GetJSONObject;
  if Assigned(LJSON) then
  begin
    LError := LJSON.valueAsBoolean('erro');
    if LError then
      raise ECustomRestException.Create(404, 'Código do CEP não encontrado.', '',  nil);

    FEndereco.Bairro := LJSON.valueAsString('bairro');
    FEndereco.Cidade := LJSON.valueAsString('localidade');
    FEndereco.CodigoIBGE := LJSON.valueAsInteger('ibge');
    FEndereco.Complemento := LJSON.valueAsString('complemento');
    FEndereco.DDD := LJSON.valueAsInteger('ddd');
    FEndereco.Logradouro := LJSON.valueAsString('logradouro');
    FEndereco.Numero := LJSON.valueAsString('unidade');
    FEndereco.Uf := LJSON.valueAsString('uf');
  end;

end;

end.
