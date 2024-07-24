program MultiCepServer;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.CORS,
  Horse.Jhonson,
  System.SysUtils,
  MultiCepServer.routers.cep in 'src\routers\MultiCepServer.routers.cep.pas',
  MultiCepServer.model.connections.Interfaces in 'src\model\connections\MultiCepServer.model.connections.Interfaces.pas',
  MultiCepServer.model.connections.RestClient in 'src\model\connections\MultiCepServer.model.connections.RestClient.pas',
  MultiCepServer.model.exceptions.Rest in 'src\model\exceptions\MultiCepServer.model.exceptions.Rest.pas',
  MultiCepServer.model.services.Interfaces in 'src\model\services\MultiCepServer.model.services.Interfaces.pas',
  MultiCepServer.model.entities.Endereco in 'src\model\entities\MultiCepServer.model.entities.Endereco.pas',
  MultiCepServer.model.services.CEP.Base in 'src\model\services\CEP\MultiCepServer.model.services.CEP.Base.pas',
  MultiCepServer.model.services.CEP.ViaCEP in 'src\model\services\CEP\MultiCepServer.model.services.CEP.ViaCEP.pas',
  MultiCepServer.helpers.JSON in 'src\helpers\MultiCepServer.helpers.JSON.pas',
  MultiCepServer.model.services.CEP.Builder in 'src\model\services\CEP\MultiCepServer.model.services.CEP.Builder.pas',
  MultiCepServer.model.services.CEP.AwesomeAPI in 'src\model\services\CEP\MultiCepServer.model.services.CEP.AwesomeAPI.pas',
  MultiCepServer.model.services.CEP.ApiCep in 'src\model\services\CEP\MultiCepServer.model.services.CEP.ApiCep.pas',
  MultiCepServer.utils.Utilitarios in 'src\utils\MultiCepServer.utils.Utilitarios.pas',
  MultiCepServer.model.exceptions.CEP in 'src\model\exceptions\MultiCepServer.model.exceptions.CEP.pas',
  MultiCepServer.helpers.CEPException in 'src\helpers\MultiCepServer.helpers.CEPException.pas',
  MultiCepServer.model.connections.Factory in 'src\model\connections\MultiCepServer.model.connections.Factory.pas',
  MultiCepServer.model.services.Factory in 'src\model\services\MultiCepServer.model.services.Factory.pas',
  MultiCepServer.controller in 'src\controller\MultiCepServer.controller.pas';

begin
  THorse.Use(CORS)
        .Use(Jhonson());

  {$IFDEF MSWINDOWS}
  IsConsole := False;
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  THorse.Listen(9000,
    procedure
    begin
      System.Writeln(Format('Serviço de consulta de CEPs rodando na porta %d', [THorse.Port]));
      System.Readln;
    end);
end.
