program whatsappenviarmensagens;

uses
  System.StartUpCopy,
  FMX.Forms,
  unt_main in 'unt_main.pas' {frm_main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
