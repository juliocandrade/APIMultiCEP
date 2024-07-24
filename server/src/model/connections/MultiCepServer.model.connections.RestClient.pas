unit MultiCepServer.model.connections.RestClient;

interface

uses
  MultiCepServer.model.connections.Interfaces,
  REST.Client,
  System.JSON;

type
  TMultiCepServerModelConnectionsRestClient = class(TInterfacedObject, iModelConnectionsRestRequest,
                                                                       iModelConnectionsRestResponse)
    private
      FBaseURL: String;
      FClient: TRestClient;
      FRequest: TRestRequest;
      FResponse: TRestResponse;

      procedure CreateComponents;
    public
      class function New: iModelConnectionsRestRequest;
      destructor Destroy; override;

      function BaseUrl(AValue: String): iModelConnectionsRestRequest;
      function Send: iModelConnectionsRestResponse;
      function Response: iModelConnectionsRestResponse;

      function StatusCode: integer;
      function StatusText: String;
      function GetJSONObject: TJSONObject;

  end;
implementation

uses
  System.SysUtils,
  REST.Types,
  MultiCepServer.model.exceptions.Rest;

{ TMultiCepServerModelConnectionsRestClient }

function TMultiCepServerModelConnectionsRestClient.BaseUrl(
  AValue: String): iModelConnectionsRestRequest;
begin
  Result := Self;
  FBaseURL := AValue;
end;

procedure TMultiCepServerModelConnectionsRestClient.CreateComponents;
begin
  FreeAndNil(FResponse);
  FreeAndNil(FRequest);
  FreeAndNil(FClient);

  FClient := TRESTClient.Create(nil);
  FClient.SynchronizedEvents := False;
  FClient.RaiseExceptionOn500 := False;

  FResponse := TRESTResponse.Create(nil);

  FRequest := TRESTRequest.Create(nil);
  FRequest.SynchronizedEvents := False;

  FRequest.Client := FClient;
  FRequest.Response := FResponse;
end;

destructor TMultiCepServerModelConnectionsRestClient.Destroy;
begin
  FreeAndNil(FResponse);
  FreeAndNil(FRequest);
  FreeAndNil(FClient);

  inherited;
end;

function TMultiCepServerModelConnectionsRestClient.GetJSONObject: TJSONObject;
begin
  Result := nil;
  if Assigned(FResponse) then
    Result := TJSONObject(FResponse.JSONValue);
end;

class function TMultiCepServerModelConnectionsRestClient.New: iModelConnectionsRestRequest;
begin
  Result := Self.Create;
end;

function TMultiCepServerModelConnectionsRestClient.Response: iModelConnectionsRestResponse;
begin
  Result := Self;
end;

function TMultiCepServerModelConnectionsRestClient.Send: iModelConnectionsRestResponse;
begin
  Result := Self;
  CreateComponents;

  FClient.BaseURL := FBaseURL;
  FRequest.Method := rmGET;
  FRequest.Execute;

  if FResponse.StatusCode >= 400 then
    raise ECustomRestException.Create(StatusCode, StatusText, FResponse.Content, FResponse.JSONValue);
end;

function TMultiCepServerModelConnectionsRestClient.StatusCode: integer;
begin
  Result := 0;

  if Assigned(FResponse) then
    Result := FResponse.StatusCode;
end;

function TMultiCepServerModelConnectionsRestClient.StatusText: String;
begin
  Result := EmptyStr;

  if Assigned(FResponse) then
    Result := FResponse.StatusText;
end;

end.
