unit MultiCepServer.helpers.CEPException;

interface
uses
  MultiCepServer.model.exceptions.CEP,
  System.JSON;

type
  ECEPException = class(MultiCepServer.model.exceptions.CEP.ECEPException)
    public
      class function Parse(AHTTPStatusCode: Integer): ECEPException;
      function GetText: String;
      function GetHTTPStatusCode: Integer;
      function GetHTTPReponseAsJSONObject: TJSONObject;
  end;

implementation

{ ECEPException }

class function ECEPException.Parse(AHTTPStatusCode: Integer): ECEPException;
begin
  case AHTTPStatusCode of
    400: Result := Self.Create(TCEPExceptionType.EXCEPTION_INVALID);
    404: Result := Self.Create(TCEPExceptionType.EXCEPTION_NOTFOUND);
    else
      Result := Self.Create(TCEPExceptionType.EXCEPTION_UNKNOWN);
  end;
end;

function ECEPException.GetHTTPReponseAsJSONObject: TJSONObject;
begin
  Result := TJSONObject.Create;
  Result.AddPair('status', GetHTTPStatusCode);
  Result.AddPair('code', GetText);
end;

function ECEPException.GetHTTPStatusCode: Integer;
begin
  Result := 500;
  case Self.Tipo of
    TCEPExceptionType.EXCEPTION_NOTFOUND: Result := 404;
    TCEPExceptionType.EXCEPTION_INVALID: Result := 400;
  end;
end;

function ECEPException.GetText: String;
begin
  case Self.Tipo of
    TCEPExceptionType.EXCEPTION_UNKNOWN: Result := 'unknown';
    TCEPExceptionType.EXCEPTION_NOTFOUND: Result := 'not_found';
    TCEPExceptionType.EXCEPTION_INVALID: Result := 'invalid';
  end;
end;

end.
