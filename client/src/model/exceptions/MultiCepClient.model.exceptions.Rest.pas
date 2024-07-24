unit MultiCepClient.model.exceptions.Rest;

interface
uses
  System.SysUtils,
  System.JSON;
type
  ECustomRestException = class(Exception)
    private
      FResponseContent: String;
      FJSONValue: TJSONValue;
      FStatusText: String;
      FStatusCode: Integer;
    public
      property ResponseContent: String read FResponseContent;
      property JSONValue: TJSONValue read FJSONValue;
      property StatusCode: Integer read FStatusCode;
      property StatusText: String read FStatusText;

      constructor Create(AStatusCode: Integer; AStatusText, AResponseContent: String; AJSON: TJSONValue); reintroduce;
      destructor Destroy; override;
  end;
implementation

{ ECustomRestException }

constructor ECustomRestException.Create(AStatusCode: Integer; AStatusText,
  AResponseContent: String; AJSON: TJSONValue);
begin
  FStatusCode := AStatusCode;
  FStatusText := AStatusText;
  FResponseContent := AResponseContent;

  Self.Message := Format('%d %s %s', [ FStatusCode, FStatusText, FResponseContent]);

  if Assigned(AJSON) then
    FJSONValue := AJSON.Clone as TJSONValue
end;

destructor ECustomRestException.Destroy;
begin
  if Assigned(FJSONValue) then
    FJSONValue.Free;
  inherited;
end;

end.
