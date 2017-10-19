unit uSaque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uRelatorioSaque;

type
  TFrmSaque = class(TFrame)
    Label1: TLabel;
    BtnConfirmar: TButton;
    BtnCancelar: TButton;
    BtnUm: TButton;
    Btn2: TButton;
    Btn3: TButton;
    Btn4: TButton;
    Btn5: TButton;
    Btn6: TButton;
    Btn7: TButton;
    Btn8: TButton;
    Btn9: TButton;
    Btn0: TButton;
    BtnClear: TButton;
    PnlValor: TPanel;
    BtnBackspace: TButton;
    procedure BtnUmClick(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn6Click(Sender: TObject);
    procedure Btn7Click(Sender: TObject);
    procedure Btn8Click(Sender: TObject);
    procedure Btn9Click(Sender: TObject);
    procedure Btn0Click(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnBackspaceClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Tecla(Valor: integer);             { Processa a tecla pressionada }
    procedure ValorSaque (ValorTotal : Integer);
var
  FrmRelatorioSaque : TFrmRelatorioSaque;
  end;



implementation

uses uFormPrincipal;

{$R *.dfm}

procedure TFrmSaque.BtnUmClick(Sender: TObject);
begin
  Tecla(1);
end;

procedure TFrmSaque.Tecla(Valor: integer);
begin
  if PnlValor.Caption = '0' then
    PnlValor.Caption := IntToStr(Valor)
  else
    PnlValor.Caption := PnlValor.Caption + IntToStr(Valor);
end;

procedure TFrmSaque.ValorSaque(ValorTotal: Integer);
var
  n100,n50,n20,n10,n5,n2,n1 : integer;
  r100,r50,r20,r10,r5,r2,r1 : integer;
begin
  ValorTotal := StrToInt(PnlValor.Caption);
  while  ValorTotal <> 0 do
    begin
      if ValorTotal > 100 then
        FrmPrincipal.TotalNotas(n100, ValorTotal, r100, 100)
          else
             r100:= ValorTotal ;
              if (r100 < 100) and (r100 > 0) then
                FrmPrincipal.TotalNotas(n50, r100, r50, 50)
                  else
                    r50 := r100 ;
                      if (r50 < 50) and (r50 >= 20) then
                        FrmPrincipal.TotalNotas(n20, r50, r20, 20)
                          else
                            r20 := r50 ;
                              if (r20 < 20) and (r20 > 0)then
                                FrmPrincipal.TotalNotas(n10, r20, r10, 10);
                                  if True then
                                    Exit;
    end;
end;

procedure TFrmSaque.Btn2Click(Sender: TObject);
begin
  Tecla(2);
end;

procedure TFrmSaque.Btn3Click(Sender: TObject);
begin
  Tecla(3);
end;

procedure TFrmSaque.Btn4Click(Sender: TObject);
begin
  Tecla(4);
end;

procedure TFrmSaque.Btn5Click(Sender: TObject);
begin
  Tecla(5);
end;

procedure TFrmSaque.Btn6Click(Sender: TObject);
begin
  Tecla(6);
end;

procedure TFrmSaque.Btn7Click(Sender: TObject);
begin
  Tecla(7);
end;

procedure TFrmSaque.Btn8Click(Sender: TObject);
begin
  Tecla(8);
end;

procedure TFrmSaque.Btn9Click(Sender: TObject);
begin
  Tecla(9);
end;

procedure TFrmSaque.Btn0Click(Sender: TObject);
begin
  Tecla(0);
end;

procedure TFrmSaque.BtnCancelarClick(Sender: TObject);
begin
FrmPrincipal.AlterarTela(1);
PnlValor.Caption := '0';
end;

procedure TFrmSaque.BtnClearClick(Sender: TObject);
begin
  PnlValor.Caption := '0';
end;

procedure TFrmSaque.BtnConfirmarClick(Sender: TObject);
begin
if PnlValor.Caption <> '0'then
  begin
    FrmPrincipal.AlterarTela(5);
    ValorSaque(StrToInt(PnlValor.Caption));
  end
  else
   ShowMessage('Informe um valor maior que ZERO.');
end;

procedure TFrmSaque.BtnBackspaceClick(Sender: TObject);
begin
  if Length(PnlValor.Caption) <= 1 then
    PnlValor.Caption := '0'
  else
    PnlValor.Caption := copy(PnlValor.Caption, 1, Length(PnlValor.Caption)-1);
end;

end.
