object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'JSON Objects'
  ClientHeight = 374
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 50
    Height = 21
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 8
    Top = 67
    Width = 43
    Height = 21
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 209
    Top = 67
    Width = 81
    Height = 21
    Caption = 'Sobrenome'
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 38
    Width = 121
    Height = 29
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 8
    Top = 94
    Width = 193
    Height = 29
    TabOrder = 1
  end
  object edtSobrenome: TEdit
    Left = 209
    Top = 94
    Width = 187
    Height = 29
    TabOrder = 2
  end
  object btnGerar: TButton
    Left = 8
    Top = 325
    Width = 121
    Height = 35
    Caption = 'Gerar F2'
    TabOrder = 3
    OnClick = btnGerarClick
  end
  object memoJSON: TMemo
    Left = 8
    Top = 134
    Width = 388
    Height = 185
    ReadOnly = True
    TabOrder = 4
  end
  object btnAdicionar: TButton
    Left = 143
    Top = 325
    Width = 121
    Height = 35
    Caption = 'Adicionar F3'
    TabOrder = 5
    OnClick = btnAdicionarClick
  end
  object btnGerarLista: TButton
    Left = 275
    Top = 325
    Width = 121
    Height = 35
    Caption = 'Gerar Lista F4'
    TabOrder = 6
    OnClick = btnGerarListaClick
  end
end
