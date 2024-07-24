unit MultiCepClient.model.connections.RestRequest;

interface

uses
  MultiCepClient.model.connections.Interfaces,
  RESTRequest4D,
  System.JSON;

type
  TMultiCepServerModelConnectionsRestRequest = class(TInterfacedObject, iModelConnectionsRestRequest,
                                                                       iModelConnectionsRestResponse)
    private
      FBaseURL: String;
      FRequest: IRequest;
      FResponse: IResponse;

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
  MultiCepClient.model.exceptions.Rest, System.SysUtils;

{ TMultiCepServerModelConnectionsRestRequest }

function TMultiCepServerModelConnectionsRestRequest.BaseUrl(
  AValue: String): iModelConnectionsRestRequest;
begin
  Result := Self;
  FBaseURL := AValue;
end;

destructor TMultiCepServerModelConnectionsRestRequest.Destroy;
begin

  inherited;
end;

function TMultiCepServerModelConnectionsRestRequest.GetJSONObject: TJSONObject;
begin
  Result := nil;
  if Assigned(FResponse) then
    Result := TJSONObject(FResponse.JSONValue);
end;

class function TMultiCepServerModelConnectionsRestRequest.New: iModelConnectionsRestRequest;
begin
  Result := Self.Create;
end;

function TMultiCepServerModelConnectionsRestRequest.Response: iModelConnectionsRestResponse;
begin
  Result := Self;
end;

function TMultiCepServerModelConnectionsRestRequest.Send: iModelConnectionsRestResponse;
begin
  FRequest := TRequest.New;
  FResponse := FRequest
    .BaseURL(FBaseURL)
    .Accept('application/json')
    .Get;

  if FResponse.StatusCode >= 400 then
    raise ECustomRestException.Create(StatusCode, StatusText, FResponse.Content, FResponse.JSONValue);
end;

function TMultiCepServerModelConnectionsRestRequest.StatusCode: integer;
begin
  Result := 0;

  if Assigned(FResponse) then
    Result := FResponse.StatusCode;
end;

function TMultiCepServerModelConnectionsRestRequest.StatusText: String;
begin
  Result := EmptyStr;

  if Assigned(FResponse) then
    Result := FResponse.StatusText;
end;

end.
