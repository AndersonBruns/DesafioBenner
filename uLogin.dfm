object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  Width = 564
  Height = 339
  TabOrder = 0
  object Label1: TLabel
    Left = 108
    Top = 12
    Width = 73
    Height = 23
    Caption = 'Ag'#234'ncia:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 108
    Top = 88
    Width = 133
    Height = 23
    Caption = 'Conta Corrente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 108
    Top = 168
    Width = 60
    Height = 23
    Caption = 'Senha:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LblAgencia: TLabel
    Left = 344
    Top = 52
    Width = 3
    Height = 13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblConta: TLabel
    Left = 348
    Top = 128
    Width = 3
    Height = 13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EdtAgencia: TEdit
    Left = 108
    Top = 40
    Width = 229
    Height = 37
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnExit = EdtAgenciaExit
  end
  object EdtContaCorrente: TEdit
    Left = 108
    Top = 116
    Width = 233
    Height = 37
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = EdtContaCorrenteExit
  end
  object BtnConfirmar: TButton
    Left = 112
    Top = 268
    Width = 121
    Height = 45
    Caption = 'Confirmar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TButton
    Left = 248
    Top = 268
    Width = 121
    Height = 45
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BtnCancelarClick
  end
  object EdtSenha: TEdit
    Left = 108
    Top = 196
    Width = 233
    Height = 37
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
  end
end
