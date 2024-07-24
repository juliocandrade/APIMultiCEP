unit MultiCepServer.utils.Utilitarios;

interface
type
  TUtilitarios = class
    class procedure CloneObjectProperties<T:class>(ASourceObject, ADestinationObject: T);
    class procedure ValidarCep(AValue: String);
  end;
implementation

uses
  System.Rtti, MultiCepServer.model.exceptions.CEP, System.SysUtils;

{ TUtilitarios }

class procedure TUtilitarios.CloneObjectProperties<T>(ASourceObject,
  ADestinationObject: T);
var
  LContexto: TRttiContext;
  LTipo: TRttiType;
  LPropriedade: TRttiProperty;
begin
  LContexto := TRttiContext.Create;
  try
    LTipo := LContexto.GetType(T);
    for LPropriedade in LTipo.GetProperties do
    begin
      LPropriedade.SetValue(TObject(ADestinationObject), LPropriedade.GetValue(TObject(ASourceObject)));
    end;
  finally
    LContexto.Free;
  end;
end;


class procedure TUtilitarios.ValidarCep(AValue: String);
var
  LTestCEP: Integer;
begin
  if AValue.IsEmpty then
    raise ECEPException.Create(TCEPExceptionType.EXCEPTION_INVALID);
  if Length(AValue) <> 8 then
    raise ECEPException.Create(TCEPExceptionType.EXCEPTION_INVALID);
  if not TryStrToInt(AValue, LTestCEP) then
    raise ECEPException.Create(TCEPExceptionType.EXCEPTION_INVALID);
end;

end.
