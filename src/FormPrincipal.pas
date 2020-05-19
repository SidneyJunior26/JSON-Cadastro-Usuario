unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.JSON;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    Label2: TLabel;
    edtSobrenome: TEdit;
    Label3: TLabel;
    btnGerar: TButton;
    memoJSON: TMemo;
    btnAdicionar: TButton;
    btnGerarLista: TButton;
    procedure btnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnGerarListaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FListaUsuarios: TJSONArray;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAdicionarClick(Sender: TObject);
var
  LJSONUsuario: TJSONObject;
begin
  LJSONUsuario := TJSONObject.Create;
  LJSONUsuario.AddPair('id', TJSONNumber.Create(StrToInt(edtCodigo.Text)));
  LJSONUsuario.AddPair('nome', edtNome.Text);
  LJSONUsuario.AddPair('sobrenome', edtSobrenome.Text);
  FListaUsuarios.AddElement(LJSONUsuario);
  edtCodigo.Clear;
  edtNome.Clear;
  edtSobrenome.Clear;
  edtCodigo.SetFocus;
end;

procedure TfrmPrincipal.btnGerarClick(Sender: TObject);
var
  LJSONUsuario: TJSONObject;
begin
  LJSONUsuario := TJSONObject.Create;
  try
    LJSONUsuario.AddPair('id', TJSONNumber.Create(StrToInt(edtCodigo.Text)));
    LJSONUsuario.AddPair('nome', edtNome.Text);
    LJSONUsuario.AddPair('sobrenome', edtSobrenome.Text);

    memoJSON.Text := LJSONUsuario.ToString;
  finally
    FreeAndNil(LJSONUsuario);
  end;
end;

procedure TfrmPrincipal.btnGerarListaClick(Sender: TObject);
begin
  memoJSON.Text := FListaUsuarios.ToString;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FListaUsuarios := TJSONArray.Create;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FListaUsuarios);
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
     VK_F2: btnGerar.Click;
     VK_F3: btnAdicionar.Click;
     VK_F4: btnGerarLista.Click;
   end;
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
      begin
         Perform(CM_DialogKey, VK_TAB, 0);
         Key := #0;
      end;
end;

end.
