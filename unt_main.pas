unit unt_main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit, FMX.Colors,
  FMX.ScrollBox, FMX.Memo, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Winapi.ShellAPI, Winapi.Windows;

type
  Tfrm_main = class(TForm)
    Text1: TText;
    toolbar: TRectangle;
    btn_close: TSpeedButton;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Text2: TText;
    edt_numero: TEdit;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Text3: TText;
    edt_mensagem: TMemo;
    Rectangle3: TRectangle;
    Layout4: TLayout;
    Text4: TText;
    btn_enviar: TColorButton;
    procedure btn_closeClick(Sender: TObject);
    procedure btn_enviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

procedure Tfrm_main.btn_closeClick(Sender: TObject);
  begin
    Application.Terminate;
  end;

procedure Tfrm_main.btn_enviarClick(Sender: TObject);
var URL :string;
  begin
    if (edt_numero.Text = '') or (edt_mensagem.Text = '') then
      begin
        ShowMessage('Verifique se há campos Vazios e Tente Novamente!');
      end
    else
      begin
        URL := 'https://wa.me/'+'55'+edt_numero.Text+'?text='+edt_mensagem.Text;

        ShellExecute(GetDesktopWindow, 'open', PChar(URL), '', '', SW_SHOWNORMAL);
      end;
  end;

end.
