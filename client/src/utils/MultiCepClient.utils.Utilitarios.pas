unit MultiCepClient.utils.Utilitarios;

interface
type
  TUtilitarios = class
    class procedure ValidarCep(AValue: String);
  end;

implementation

uses
  MultiCepClient.model.exceptions.CEP,
  System.SysUtils;

{ TUtilitarios }

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
