object FrmRelatorioSaque: TFrmRelatorioSaque
  Left = 0
  Top = 0
  Width = 564
  Height = 338
  TabOrder = 0
  object Memo: TMemo
    Left = 84
    Top = 45
    Width = 389
    Height = 225
    TabOrder = 0
  end
  object BtnRetornar: TButton
    Left = 352
    Top = 276
    Width = 121
    Height = 45
    Caption = 'Retornar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnRetornarClick
  end
end
