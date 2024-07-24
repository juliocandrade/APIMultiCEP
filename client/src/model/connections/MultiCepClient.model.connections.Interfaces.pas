unit MultiCepClient.model.connections.Interfaces;

interface

uses
  System.JSON;
type
  iModelConnectionsRestResponse = interface
    ['{186649D6-80CE-4151-A24A-6DC88BDAF548}']
    function StatusCode: integer;
    function StatusText: String;
    function GetJSONObject: TJSONObject;
  end;

  iModelConnectionsRestRequest = interface
    ['{71F0B87D-2BB6-40F5-8D2E-5C1B27D454A8}']
    function BaseUrl(AValue: String): iModelConnectionsRestRequest;
    function Send: iModelConnectionsRestResponse;
    function Response: iModelConnectionsRestResponse;
  end;

  iModelConnectionsFactory = interface
    ['{81982F80-126D-4A76-A1EE-FCCF50EE6616}']
    function ConnectionRest: iModelConnectionsRestRequest;
  end;

implementation

end.
