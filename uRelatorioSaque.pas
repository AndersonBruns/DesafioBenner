unit uRelatorioSaque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient;

type
  TFrmRelatorioSaque = class(TFrame)
    Memo: TMemo;
    BtnRetornar: TButton;
    procedure BtnRetornarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure MandaProMemo (csResultado : String);

  end;

implementation

uses uFormPrincipal
   , uSaque
   , uManutencao
     ;

{$R *.dfm}

procedure TFrmRelatorioSaque.BtnRetornarClick(Sender: TObject);
begin
FrmPrincipal.AlterarTela(1);
end;

procedure TFrmRelatorioSaque.MandaProMemo(csResultado: String);
begin
Memo.Text := csResultado;
end;

end.


