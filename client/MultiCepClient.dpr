program MultiCepClient;

uses
  Vcl.Forms,
  MultiCepClient.view.Principal in 'src\view\MultiCepClient.view.Principal.pas' {frmPrincipal},
  MultiCepClient.model.connections.RestRequest in 'src\model\connections\MultiCepClient.model.connections.RestRequest.pas',
  MultiCepClient.model.connections.Interfaces in 'src\model\connections\MultiCepClient.model.connections.Interfaces.pas',
  MultiCepClient.model.exceptions.Rest in 'src\model\exceptions\MultiCepClient.model.exceptions.Rest.pas',
  MultiCepClient.model.services.interfaces in 'src\model\services\MultiCepClient.model.services.interfaces.pas',
  MultiCepClient.model.services.CEP in 'src\model\services\CEP\MultiCepClient.model.services.CEP.pas',
  MultiCepClient.model.entities.Endereco in 'src\model\entities\MultiCepClient.model.entities.Endereco.pas',
  MultiCepClient.utils.Utilitarios in 'src\utils\MultiCepClient.utils.Utilitarios.pas',
  MultiCepClient.model.exceptions.CEP in 'src\model\exceptions\MultiCepClient.model.exceptions.CEP.pas',
  MultiCepClient.controller in 'src\controller\MultiCepClient.controller.pas',
  MultiCepClient.model.services.factory in 'src\model\services\MultiCepClient.model.services.factory.pas',
  MultiCepClient.model.connections.Factory in 'src\model\connections\MultiCepClient.model.connections.Factory.pas',
  MultiCepClient.helpers.CEPException in 'src\helpers\MultiCepClient.helpers.CEPException.pas';

{$R *.res}

begin

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
