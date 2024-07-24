unit MultiCepClient.model.entities.Endereco;

interface

type
  TMultiCepClientModelEntitiesEndereco = class
    private
      FUF: String;
      FLogradouro: String;
      FLatitude: Double;
      FBairro: String;
      FDDD: Integer;
      FCodigoIBGE: Integer;
      FCEP: String;
      FNumero: String;
      FLongitude: Double;
      FComplemento: String;
      FTipoEndereco: String;
      FCidade: String;
      procedure SetUF(const Value: String);
      procedure SetBairro(const Value: String);
      procedure SetCEP(const Value: String);
      procedure SetCidade(const Value: String);
      procedure SetCodigoIBGE(const Value: Integer);
      procedure SetComplemento(const Value: String);
      procedure SetDDD(const Value: Integer);
      procedure SetLatitude(const Value: Double);
      procedure SetLogradouro(const Value: String);
      procedure SetLongitude(const Value: Double);
      procedure SetNumero(const Value: String);
      procedure SetTipoEndereco(const Value: String);
    public
      property Bairro: String read FBairro write SetBairro;
      property CEP: String read FCEP write SetCEP;
      property Cidade: String read FCidade write SetCidade;
      property CodigoIBGE: Integer read FCodigoIBGE write SetCodigoIBGE;
      property Complemento: String read FComplemento write SetComplemento;
      property DDD: Integer read FDDD write SetDDD;
      property Latitude: Double read FLatitude write SetLatitude;
      property Logradouro: String read FLogradouro write SetLogradouro;
      property Longitude: Double read FLongitude write SetLongitude;
      property Numero: String read FNumero write SetNumero;
      property TipoEndereco: String read FTipoEndereco write SetTipoEndereco;
      property UF: String read FUF write SetUF;
  end;

implementation

{ TMultiCepClientModelEntitiesEndereco }

procedure TMultiCepClientModelEntitiesEndereco.SetBairro(const Value: String);
begin
  FBairro := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetCEP(const Value: String);
begin
  FCEP := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetCidade(const Value: String);
begin
  FCidade := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetCodigoIBGE(
  const Value: Integer);
begin
  FCodigoIBGE := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetComplemento(
  const Value: String);
begin
  FComplemento := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetDDD(const Value: Integer);
begin
  FDDD := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetLatitude(const Value: Double);
begin
  FLatitude := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetLogradouro(
  const Value: String);
begin
  FLogradouro := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetLongitude(
  const Value: Double);
begin
  FLongitude := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetNumero(const Value: String);
begin
  FNumero := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetTipoEndereco(
  const Value: String);
begin
  FTipoEndereco := Value;
end;

procedure TMultiCepClientModelEntitiesEndereco.SetUF(const Value: String);
begin
  FUF := Value;
end;

end.
