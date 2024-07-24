unit MultiCepServer.model.exceptions.CEP;

interface

uses
  System.SysUtils;
type
{$SCOPEDENUMS ON}
  TCEPExceptionType = (EXCEPTION_UNKNOWN,
                       EXCEPTION_NOTFOUND,
                       EXCEPTION_INVALID);
{$SCOPEDENUMS OFF}

  ECEPException = class(Exception)
    private
      FTipo: TCEPExceptionType;
    public
      constructor Create(ATipo: TCEPExceptionType);
      property Tipo: TCEPExceptionType read FTipo;
  end;
implementation

{ ECEPException }

constructor ECEPException.Create(ATipo: TCEPExceptionType);
begin
  FTipo := ATipo;
  case FTipo of
    TCEPExceptionType.EXCEPTION_UNKNOWN: Self.Message := 'Erro Desconhecido';
    TCEPExceptionType.EXCEPTION_NOTFOUND: Self.Message := 'CEP Não encontrado';
    TCEPExceptionType.EXCEPTION_INVALID: Self.Message := 'CEP Inválido';
  end;
end;

end.
