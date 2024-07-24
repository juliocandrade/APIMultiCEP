unit MultiCepClient.view.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.WinXPanels, Vcl.ComCtrls, Vcl.Buttons, Vcl.VirtualImageList,
  Vcl.BaseImageCollection, Vcl.ImageCollection, System.ImageList, Vcl.ImgList;

type
  TfrmPrincipal = class(TForm)
    pnMain: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    pgDados: TPageControl;
    tsEnderecos: TTabSheet;
    tsDocumentacao: TTabSheet;
    tsTelefones: TTabSheet;
    Label11: TLabel;
    Edit11: TEdit;
    Label12: TLabel;
    Edit12: TEdit;
    Label13: TLabel;
    Edit13: TEdit;
    Label14: TLabel;
    Edit14: TEdit;
    Label15: TLabel;
    Edit15: TEdit;
    SpeedButton2: TSpeedButton;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    edCidade: TEdit;
    lbCidade: TLabel;
    edUF: TEdit;
    lbEstado: TLabel;
    edPais: TEdit;
    lbPais: TLabel;
    edComplemento: TEdit;
    lbComplemento: TLabel;
    edBairro: TEdit;
    lbBairro: TLabel;
    edLogradouro: TEdit;
    edNumero: TEdit;
    lbNumero: TLabel;
    lbLogradouro: TLabel;
    edCEP: TEdit;
    lbCEP: TLabel;
    edLocal: TEdit;
    lbLocal: TLabel;
    SpeedButton1: TSpeedButton;
    Panel7: TPanel;
    ListView1: TListView;
    StackPanel1: TStackPanel;
    StackPanel3: TStackPanel;
    ComboBox1: TComboBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    VirtualImageList2: TVirtualImageList;
    SpeedButton5: TSpeedButton;
    Button4: TButton;
    Button5: TButton;
    Panel1: TPanel;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure edCEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  MultiCepClient.controller;

{$R *.dfm}

procedure TfrmPrincipal.edCEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    TMultiCepClientController.New
      .Services
        .ServiceCEP
          .Codigo(edCEP.Text)
          .Display(
            procedure(AValue: TEndereco)
            begin
              edUF.Text := AValue.UF;
              edLocal.Text := AValue.Logradouro;
              edLogradouro.Text := AValue.Logradouro;
              edBairro.Text := AValue.Bairro;
              edNumero.Text := AValue.Numero;
              edComplemento.Text := AValue.Complemento;
              edCidade.Text := AValue.Cidade;
            end)
          .Pesquisar;
  end;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
