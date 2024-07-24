unit MultiCepServer.routers.cep;

interface
implementation
uses
  Horse,
  System.JSON,
  Rest.Json,
  Horse.Jhonson,
  MultiCepServer.model.exceptions.CEP,
  MultiCepServer.helpers.CEPException,
  System.SysUtils, MultiCepServer.controller;

  procedure DoGetCep(Req: THorseRequest; Res: THorseResponse);
  var
    LCodigo: String;
    LJSONResponse: TJSONObject;
  begin
    try
      LCodigo := Req.Params.Items['cep'];
      LJSONResponse := TJSON.ObjectToJsonObject(TMultiCepServerController.New.Services.ServiceCEP.Codigo(LCodigo).Pesquisar, [joIndentCaseLower]);
      LJSONResponse.AddPair('status', 200);
      Res.Send<TJSONObject>(LJSONResponse);
    except
      on E: ECEPException do
        Res.Status(e.GetHTTPStatusCode).Send<TJSONObject>(e.GetHTTPReponseAsJSONObject);
      on E: Exception do
        Res
          .Status(500)
          .Send<TJSONObject>(ECEPException.Create(TCEPExceptionType.EXCEPTION_UNKNOWN).GetHTTPReponseAsJSONObject);
    end;
  end;

  procedure Registry;
  begin
    THorse.Get('/cep/:cep', DoGetCep);
  end;

initialization
  Registry;
end.
