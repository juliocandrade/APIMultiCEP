object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cliente'
  ClientHeight = 534
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnMain: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 534
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 808
    ExplicitHeight = 523
    object Panel2: TPanel
      Left = 0
      Top = 57
      Width = 814
      Height = 477
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 808
      ExplicitHeight = 430
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 814
        Height = 105
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = -1
        ExplicitTop = -5
        object Label1: TLabel
          Left = 16
          Top = 7
          Width = 27
          Height = 15
          Caption = 'CNPJ'
        end
        object Label11: TLabel
          Left = 168
          Top = 7
          Width = 79
          Height = 15
          Caption = 'Nome Fantasia'
        end
        object Label12: TLabel
          Left = 408
          Top = 7
          Width = 34
          Height = 15
          Caption = 'E-mail'
        end
        object Label13: TLabel
          Left = 632
          Top = 7
          Width = 62
          Height = 15
          Caption = 'Home Page'
        end
        object Label14: TLabel
          Left = 16
          Top = 55
          Width = 65
          Height = 15
          Caption = 'Raz'#227'o Social'
        end
        object Label15: TLabel
          Left = 408
          Top = 55
          Width = 33
          Height = 15
          Caption = 'Grupo'
        end
        object SpeedButton2: TSpeedButton
          Left = 762
          Top = 69
          Width = 23
          Height = 23
          ImageIndex = 6
          ImageName = 'find'
          Images = VirtualImageList2
        end
        object Edit1: TEdit
          Left = 16
          Top = 21
          Width = 146
          Height = 23
          TabOrder = 0
        end
        object Edit11: TEdit
          Left = 168
          Top = 21
          Width = 234
          Height = 23
          TabOrder = 1
        end
        object Edit12: TEdit
          Left = 408
          Top = 21
          Width = 218
          Height = 23
          TabOrder = 2
        end
        object Edit13: TEdit
          Left = 632
          Top = 21
          Width = 153
          Height = 23
          TabOrder = 3
        end
        object Edit14: TEdit
          Left = 16
          Top = 69
          Width = 386
          Height = 23
          TabOrder = 4
        end
        object Edit15: TEdit
          Left = 408
          Top = 69
          Width = 348
          Height = 23
          TabOrder = 5
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 105
        Width = 814
        Height = 340
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 808
        ExplicitHeight = 325
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 814
          Height = 340
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          ExplicitWidth = 808
          ExplicitHeight = 325
          object pgDados: TPageControl
            Left = 1
            Top = 1
            Width = 812
            Height = 338
            ActivePage = tsEnderecos
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 806
            ExplicitHeight = 323
            object tsDocumentacao: TTabSheet
              Caption = 'Documenta'#231#227'o'
              ImageIndex = 1
            end
            object tsEnderecos: TTabSheet
              Caption = 'Endere'#231'os'
              object Panel11: TPanel
                Left = 0
                Top = 23
                Width = 804
                Height = 285
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                ExplicitWidth = 798
                ExplicitHeight = 270
                object Panel12: TPanel
                  Left = 0
                  Top = 0
                  Width = 517
                  Height = 285
                  Align = alClient
                  BevelOuter = bvLowered
                  TabOrder = 0
                  ExplicitWidth = 511
                  ExplicitHeight = 270
                  object lbCidade: TLabel
                    Left = 12
                    Top = 149
                    Width = 37
                    Height = 15
                    Caption = 'Cidade'
                  end
                  object lbEstado: TLabel
                    Left = 236
                    Top = 149
                    Width = 35
                    Height = 15
                    Caption = 'Estado'
                  end
                  object lbPais: TLabel
                    Left = 416
                    Top = 149
                    Width = 21
                    Height = 15
                    Caption = 'Pa'#237's'
                  end
                  object lbComplemento: TLabel
                    Left = 12
                    Top = 101
                    Width = 77
                    Height = 15
                    Caption = 'Complemento'
                  end
                  object lbBairro: TLabel
                    Left = 236
                    Top = 101
                    Width = 31
                    Height = 15
                    Caption = 'Bairro'
                  end
                  object lbNumero: TLabel
                    Left = 416
                    Top = 53
                    Width = 44
                    Height = 15
                    Caption = 'N'#250'mero'
                  end
                  object lbLogradouro: TLabel
                    Left = 12
                    Top = 53
                    Width = 62
                    Height = 15
                    Caption = 'Logradouro'
                  end
                  object lbCEP: TLabel
                    Left = 12
                    Top = 5
                    Width = 21
                    Height = 15
                    Caption = 'CEP'
                  end
                  object lbLocal: TLabel
                    Left = 146
                    Top = 5
                    Width = 28
                    Height = 15
                    Caption = 'Local'
                  end
                  object SpeedButton1: TSpeedButton
                    Left = 198
                    Top = 163
                    Width = 23
                    Height = 23
                    ImageIndex = 6
                    ImageName = 'find'
                    Images = VirtualImageList2
                  end
                  object edCidade: TEdit
                    Left = 12
                    Top = 163
                    Width = 181
                    Height = 23
                    TabOrder = 0
                  end
                  object edUF: TEdit
                    Left = 236
                    Top = 163
                    Width = 165
                    Height = 23
                    TabOrder = 1
                  end
                  object edPais: TEdit
                    Left = 416
                    Top = 163
                    Width = 81
                    Height = 23
                    TabOrder = 2
                  end
                  object edComplemento: TEdit
                    Left = 12
                    Top = 115
                    Width = 209
                    Height = 23
                    TabOrder = 3
                  end
                  object edBairro: TEdit
                    Left = 236
                    Top = 115
                    Width = 261
                    Height = 23
                    TabOrder = 4
                  end
                  object edLogradouro: TEdit
                    Left = 12
                    Top = 67
                    Width = 389
                    Height = 23
                    TabOrder = 5
                  end
                  object edNumero: TEdit
                    Left = 416
                    Top = 67
                    Width = 81
                    Height = 23
                    TabOrder = 6
                  end
                  object edCEP: TEdit
                    Left = 12
                    Top = 19
                    Width = 121
                    Height = 23
                    TabOrder = 7
                    OnKeyDown = edCEPKeyDown
                  end
                  object edLocal: TEdit
                    Left = 146
                    Top = 19
                    Width = 351
                    Height = 23
                    TabOrder = 8
                  end
                end
                object Panel7: TPanel
                  Left = 517
                  Top = 0
                  Width = 189
                  Height = 285
                  Align = alRight
                  BevelOuter = bvLowered
                  TabOrder = 1
                  ExplicitLeft = 511
                  ExplicitHeight = 270
                  object ListView1: TListView
                    Left = 1
                    Top = 1
                    Width = 187
                    Height = 283
                    Align = alClient
                    BevelOuter = bvNone
                    BorderStyle = bsNone
                    Checkboxes = True
                    Columns = <
                      item
                        AutoSize = True
                        Caption = 'Tipo'
                      end
                      item
                        Caption = 'Principal'
                        Width = 60
                      end>
                    Items.ItemData = {
                      05E60000000500000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
                      000943006F006D00650072006300690061006C0000000000FFFFFFFFFFFFFFFF
                      00000000FFFFFFFF000000000B5200650073006900640065006E006300690061
                      006C0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000745006E00
                      7400720065006700610000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000
                      00000843006F006200720061006E00E700610000000000FFFFFFFFFFFFFFFF00
                      000000FFFFFFFF000000000F43006F00720072006500730070006F006E006400
                      EA006E00630069006100}
                    MultiSelect = True
                    TabOrder = 0
                    ViewStyle = vsReport
                    ExplicitHeight = 268
                  end
                end
                object StackPanel1: TStackPanel
                  Left = 706
                  Top = 0
                  Width = 98
                  Height = 285
                  Align = alRight
                  BevelOuter = bvLowered
                  ControlCollection = <
                    item
                      Control = Button5
                      HorizontalPositioning = sphpFill
                      VerticalPositioning = spvpTop
                    end
                    item
                      Control = Button4
                      HorizontalPositioning = sphpFill
                      VerticalPositioning = spvpTop
                    end>
                  Padding.Left = 2
                  Padding.Top = 2
                  Padding.Right = 2
                  Padding.Bottom = 2
                  TabOrder = 2
                  ExplicitLeft = 700
                  ExplicitHeight = 270
                  object Button5: TButton
                    Left = 3
                    Top = 3
                    Width = 92
                    Height = 30
                    Align = alTop
                    Caption = 'C&onfirmar'
                    ImageIndex = 4
                    ImageName = 'ok'
                    ImageMargins.Left = 5
                    Images = VirtualImageList2
                    TabOrder = 1
                  end
                  object Button4: TButton
                    Left = 3
                    Top = 35
                    Width = 92
                    Height = 30
                    Align = alTop
                    Caption = '&Cancelar'
                    ImageIndex = 3
                    ImageName = 'cancel'
                    ImageMargins.Left = 5
                    Images = VirtualImageList2
                    TabOrder = 0
                  end
                end
              end
              object Panel8: TPanel
                Left = 0
                Top = 0
                Width = 804
                Height = 23
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                ExplicitWidth = 798
                object SpeedButton3: TSpeedButton
                  Left = 0
                  Top = 0
                  Width = 23
                  Height = 23
                  Align = alLeft
                  ImageIndex = 2
                  ImageName = 'new'
                  Images = VirtualImageList2
                  Enabled = False
                  Layout = blGlyphTop
                end
                object SpeedButton4: TSpeedButton
                  Left = 23
                  Top = 0
                  Width = 23
                  Height = 23
                  Align = alLeft
                  ImageIndex = 1
                  ImageName = 'edit'
                  Images = VirtualImageList2
                  Enabled = False
                  Layout = blGlyphTop
                  Spacing = 1
                  ExplicitTop = -1
                end
                object SpeedButton5: TSpeedButton
                  Left = 46
                  Top = 0
                  Width = 23
                  Height = 23
                  Align = alLeft
                  ImageIndex = 0
                  ImageName = 'delete'
                  Images = VirtualImageList2
                  Enabled = False
                  Layout = blGlyphTop
                  Spacing = 1
                  ExplicitLeft = 40
                  ExplicitTop = -6
                end
                object ComboBox1: TComboBox
                  Left = 69
                  Top = 0
                  Width = 300
                  Height = 23
                  Align = alLeft
                  TabOrder = 0
                end
              end
            end
            object tsTelefones: TTabSheet
              Caption = 'Telefones'
              ImageIndex = 2
            end
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 445
        Width = 814
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitTop = 441
        object Button6: TButton
          Left = 521
          Top = 1
          Width = 92
          Height = 30
          Caption = 'C&onfirmar'
          ImageIndex = 4
          ImageName = 'ok'
          ImageMargins.Left = 5
          Images = VirtualImageList2
          TabOrder = 0
        end
        object Button7: TButton
          Left = 717
          Top = 1
          Width = 92
          Height = 30
          Caption = '&Sair'
          ImageIndex = 5
          ImageName = 'exit'
          ImageMargins.Left = 20
          ImageMargins.Right = -20
          Images = VirtualImageList2
          TabOrder = 1
        end
        object Button8: TButton
          Left = 619
          Top = 1
          Width = 92
          Height = 30
          Caption = '&Cancelar'
          ImageIndex = 3
          ImageName = 'cancel'
          ImageMargins.Left = 5
          Images = VirtualImageList2
          TabOrder = 2
        end
      end
    end
    object StackPanel3: TStackPanel
      Left = 0
      Top = 0
      Width = 814
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      ControlCollection = <
        item
          Control = Button3
          HorizontalPositioning = sphpLeft
          VerticalPositioning = spvpFill
        end
        item
          Control = Button2
          HorizontalPositioning = sphpLeft
          VerticalPositioning = spvpFill
        end
        item
          Control = Button1
          HorizontalPositioning = sphpLeft
          VerticalPositioning = spvpFill
        end>
      Orientation = spoHorizontal
      Padding.Left = 2
      Padding.Top = 2
      Padding.Right = 2
      Padding.Bottom = 2
      TabOrder = 1
      ExplicitWidth = 808
      object Button3: TButton
        Left = 2
        Top = 2
        Width = 68
        Height = 53
        Align = alLeft
        Caption = '&Incluir'
        ImageAlignment = iaTop
        ImageIndex = 2
        ImageName = 'new'
        ImageMargins.Top = 5
        Images = VirtualImageList1
        TabOrder = 2
        ExplicitTop = 16
      end
      object Button2: TButton
        Left = 72
        Top = 2
        Width = 68
        Height = 53
        Align = alLeft
        Caption = '&Editar'
        ImageAlignment = iaTop
        ImageIndex = 1
        ImageName = 'edit'
        ImageMargins.Top = 5
        Images = VirtualImageList1
        TabOrder = 1
      end
      object Button1: TButton
        Left = 142
        Top = 2
        Width = 68
        Height = 53
        Align = alLeft
        Caption = 'E&xcluir'
        ImageAlignment = iaTop
        ImageIndex = 0
        ImageName = 'delete'
        ImageMargins.Top = 5
        Images = VirtualImageList1
        TabOrder = 0
      end
    end
  end
  object ImageCollection1: TImageCollection
    Images = <
      item
        Name = 'cancel'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D494844520000002000000020080300000044A48A
              C60000000373424954080808DBE14FE00000000970485973000000DD000000DD
              017053A2070000001974455874536F667477617265007777772E696E6B736361
              70652E6F72679BEE3C1A00000075504C5445FFFFFFFF0000D52B2BDB2424DF20
              20E61A1ADE1616DF2020E01F1FE31C1CE41B1BE31C1CE21B1BE21B1BE21B1BE3
              1B1BE21B1BE21B1BE21B1BE21A1AE21B1BE21B1BE21B1BE21B1BE21B1BE21B1B
              E21B1BE21C1CE11B1BE21B1BE21B1BE21B1BE63838E84747E84848FBE3E3FCE7
              E7FDF0F0FFFFFF8DFA398E0000001F74524E530004060708141718192D41497C
              848F909798BBC1C4C8D6DAE2E3EDF1F2F3F5ADBDE480000000D34944415438CB
              8593D71A82300C8503A208A2EC692165B4EFFF88320A52912FE7AACD7F9AAE04
              6093E1FA51C65816F9AE01475D5F156EAA5ED71F6C7A6FD4F4F6CC3DBF257850
              72FB72A7C03F2A9C95DB25FE55692FDC4AF144A9351B9E78AAE7C4EF8D9AB57C
              8DF3560D9AFB6808D4A413BD72F05E742A18005C985A2FA45C1CBC9752A81CEC
              028F35ED189E1DDB60D60342D41D3AC71062D41CC3A0718C2147DDA173CCA1DE
              5D9B4FCBE5B0E358D306720BF290E435C987229F9AFC2CFABBC982A14B8E2C5A
              BAECE9C6A15B8F6EDEF3F6FF00AB5463351901F5650000000049454E44AE4260
              82}
          end>
      end
      item
        Name = 'delete'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000473424954080808087C0864880000000970485973000000EC000000
              EC01792871BD0000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A00000468494441545885AD975D6C544514C77F73EF
              DD8FEEB6DB7669CB426B91F2514949804222F860D498D4871AE20331182508C1
              44F40563C287519410CA030924461E3090140AD436880F05C5A0484C90444510
              68A482E947DCA5DB2D65DBB2DBDEDD7BC787B2D72EBB0BBBDBFE93799933E7FC
              FF73E6CCB97385DF2F5DBA930D42C1CD14D013085D7E7E51F9C55CFD34DDC906
              21F81C39157AB87B2F143F7FA5F7AD97EBAB5B73F153A6BAF3040CC3D4FCE1A1
              13E7AFF6BD999380E9200770D86CC4E386080C0D1DBDD0F9EFEBD9FA69990C7D
              A361CEFB6F634A33A3F35C8F979766CD0360C9FC1A4622112408555576015F4D
              49C0CDFBFD7485071EEBEC8F0C5B02344DA5D453F4C4B8590B7871560DE54E37
              869939035585C5D9F2E42EC0A16A2C2FAB9C32C193306D45982F9232D0DD1F64
              3812C92B905004CF54556153D5FC0554979711338CFC04089133798A003D6E10
              8BC7730E52E0B0A3E5419E2260706498D1E858CE41CA3D1EBCFF5FC1FC0554CE
              98915790048CC05DF43FAE12EFEB2BBCD2B8FEB814049174CA58BC63C5B99640
              3A1FD1735F6E45B21720141E26AAEBA98B84A0D2EB657064C4B2DB6C1ABE9212
              006277FE21D2DA46ECAF5B99B499025A31D51DF5670FF74C36245D43BB4DC3AE
              A50E874D03916C776813C91BFBF127C2BBF73C8E1C4091F086548CEBBF37AE7F
              3563067245F4BBEF7970FC646E4E829834CD8615678E5E800C7DA0D0E964AECF
              47676F6F4A2B2E76BB9853513191F693597D6F9221B10921DA2E356CAC7DEEDC
              E17B69FB80A6AA0801B55595290212773DD2DA869C649BF9DA2B14AFAAA77BDF
              21F460C89A2F5C5C4BD5A6B5045A4E13FEF55A220D654EBBB903F830A906F4B8
              811E8B13191B672412253AAEA3C7E2D610081445C1F0FB53CEBC78553D858B16
              B0B0691BF68A328B7CFECE2DB86AE650B4B42E3911526EFC6DF93BB69CFA40B1
              DB85AFB414FDDAF5145BF7BE430FC967B0B0691BFE96AFA9DEBC0EC5E960F4C6
              2DFCC74E3DEA52227CFACABCFA80D91F4C99D38321BAB635B160CF561CBE729E
              FE601300A39D7F7367D701CCB1F1141F89A8491290A90F00785C0514BB279E8F
              66349A768D3E3048E0C437163952D277B01923435605B234AB3E60D7B4A45EAF
              6468BB858B6BA9DEBCCE224708E67DB2C5AA8914018AE84F12E071B998595A92
              76B89D4E6B9D3A7B765AF2F93BB75867DEF9FEC7E8C141AB26EC15698E578ACE
              ACDE038A102C9AF314AA98D06B5FB6048498D8E543546D5A6B91DFFE6C3FE6D8
              385DDBF75AE4BE358DF47ED13C396CCFB28E237F66F51E5014C52207504A4A70
              AC7C96F15F2E5B738196D3142DADC37FEC9455707A3044D7F6267C6B1A1938F3
              43F2E661BF0099772B364321863EDA89CCE30525E16641C183FABAF6765D9110
              7AB24B2A94B2328ADE7B17A12AB9FED40D60C8D575EDED3A809052AA3D4334E4
              FB8B16FEF2B03776F1E7DD20D297FA2448B8892157AFF8B6F94E624EE443FA28
              2E356CF43AEDE60EA47C5B8237CD921E24079CAE0707133B9F5601095C78E153
              CDE3EE5E25113502598A900302F5467DC7916B997CFE035A6FC8DFF0994E3C00
              00000049454E44AE426082}
          end>
      end
      item
        Name = 'edit'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000473424954080808087C0864880000000970485973000000EC000000
              EC01792871BD0000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A00000276494441545885ED96CD4F134118C67FB374
              974F535A4050881AB1261A1325C478F5E36662624C483C997833F14285C4FFC0
              98A0AD0910E3C5831E8CC53B570E9E90287A814448482F14A40D4B5AB65DDB8E
              87B2A59456966E37C4C4E7B6F3CE3BCF33EF33EFCEC0114300FC8C259E211801
              B45A174AC437A4A6363E19089C7E75983C65478623720099972263A6C33F96A3
              C1C30B7048BEAB02B6D346687E293A7258017580288A4867D22FEC56A27006D6
              12B252F0F3F72526A666AA269FE8F0120E0E0160A45218DB0692C2524211F2DA
              C5F3076EF0AF021C4206BAFD070AA8A305B5C1533EF078EC03713D652BD9B2C0
              CA29B5C42EFE5BE0C88272FC9316ECAB805B906FEEB4B0D83781A9DC03565094
              87627CFCDB3E01C3E12962719D4E6F1BE3A3F7190E47584B6CD922B172842823
              9F1B54F9DA3483A95CDD19BA4C3EFF161870DD023937A8B2E98D007759EC8285
              4E2BAE8BC9C97657BB404686B42239903C13C33CB75E086AF94F50E10C04C353
              ACC6F59A084BBB40C82CF8E31F8BE4E91C292347AA6F155F737645537D4170A9
              0B84CCD21D7D49DBD6174AC901548FB24E636BA0E3F6F416B8D0054266E98986
              68AD482EF690571460C702ABD4D65CEB7B977CB60A79DB1E72A8A305B590439D
              EE825AC9C1C15D507AE2BB62EF2B93AB2296F336048EDF984E56150FCE2CD072
              497AF45994F834E9CDA522B9A7B91DA1E4BCD5766EC17117349B1B78F226BF7D
              37317E2D17166DF1A30FBC96FD277B0FFC8757B5A0FCB5538AD2F2CF2F2C73EB
              14A8088E9D7D406A6D06FDD273F20D4DB636E0D882A7A1773CBADECB950BFD18
              5A176643AB15B2751D1FF97BC09A60BA2020636792022005637516610AE4581D
              D7730F7F00E9AC5418D1DE1BAF0000000049454E44AE426082}
          end>
      end
      item
        Name = 'exit'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000970485973000000EC000000EC01792871BD0000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000025D49
              4441545885ED974D6B135114869F331F3712BBA8583F26164148A468535B75D5
              A60AD68D08823FC09FE04A4DAB1475218AC59DFF40B7AEDCB8900AD26657A469
              AA880ABAD0C66F4445A19DDCEBA26D629349D28E612AE8BB9961CE9979DF7BCE
              DC73CF817586ACC6297166AA4344A5B42549C1A40C2481149004992D8EA507C3
              0A702AB7461223F95EA3ED6EC1A43492124C12481A68378B3E989A4F984C5872
              588AC08E6CBE53237781BE2027CBB6503117A5142AE6A0948B8AB9BC7AF1A629
              818139E0F6E6B87DF1F1E5BDF3D57607402337813EC7B189B7C55790A8988BED
              D87FB2C20430FCE9470960245000701460D7EE4E1CD7A9F6698AE2584FDD7F29
              313C9D31C69A004E0509B096AE6D4028F26698BBDE3B09E548D4C00A7A18255A
              BFE440C82498DA0D1495804675E2DF488197CD4F82C4B436C7DFDDD8F7FE775B
              4411900DC041CB92F16D67F35B2317606CFF984001E8B6441E765C78E2851630
              9A518C0EA835BDF3F6DAFE0FDAF687040A085DEE82FF6059C49AFF81D4A6FA9A
              BDEC4C0EE80F3496A81C644297EBFB77808116A740F41A9C158488C0F3CFBA4E
              4969BCDFB79F7FB4C52A39E306D2189E2EB8CE895002AEE46A4ED4A608203FF2
              F1EA9E2244B40BA4E4DC33900666B5318797C9231300F21398D2DA0C5517A2FF
              67412402BCEC4CCECB1626826C11F503F413D04FC35F9482EF00FE82DF7202EF
              5C7E10CAED790D165320DCC770F2E5B3D7A1DA722F3B53A7365620865B7505D8
              F3FA74C9B576FA7EE9C0D72FDF6A9CEA0D26AB417930D9685F2A06D857F4F389
              91E9BEA0D10C686F44D2682E6886160CA7148A633D87C20A5877FC02378ABD35
              A009909A0000000049454E44AE426082}
          end>
      end
      item
        Name = 'new'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000970485973000000EC000000EC01792871BD0000001974455874536F
              667477617265007777772E696E6B73636170652E6F72679BEE3C1A000003CB49
              4441545885CD975F685B551CC73FE7A6CDBFDA6E49FFA4AD6BEDCA1E54D8C370
              B4B5A0B4C5E9A6630341D9F4C1EAA30FD381DBD4C18C8875C3C2F4A58AE82C8A
              3E082293E1980FEDA0D0AD53103BD081383B3B1D6997A44D939B7B93DE7B7C58
              13D3E6A4EDED3AF1FB94F33BE77B7E9FF3F79E08162453A930F0062B289EB6C6
              8C79DA73E5A49EBD9A48CD3FBA7D6BE8F795BC2A698E0D42040BCB52CA56A435
              F6C378A4F53F011082E0D298945423ADF36B81700E008112554D486BD829C4AA
              00A2B6A07FCE855CD9D32CA43DE204A26467174CC14052236A0B1E9972716846
              E3C3E4CABC12D9A861FF7CF9CAF4F6D50094A982BA0D4F465D442CC1F1044C5A
              B0C36BD35B61339F59DCB6B2C24D65857B691777492977033FAE04A01C925F83
              AFAA2D2AB47F939FAEB1F089D58CC9994ACEE9431EC9E91A8BBD3E79C7924389
              25C8A9C763D3E3B1EF4CE605393E86EB2DE50C44A6E27C32784E6988CDC63132
              29CACB8AADCFBDB08F507DEDED03184696CBBF4C280DC9549CC4EC4D65DD53FB
              F73A4A5E12A03E14A02FDCAB0630B2A42DA9ACAB6FA85B1F008FA79CCD2DF54A
              C39C6993CCA801D62225C0E4F569DEECFB426948EA7162B1695CAEE2FD1B7EEB
              10CDF76C7204F0FF3C054D9B6AF978E065A561BD97207FBF15BE884C33CBDF37
              A24A43CACCA25B50E672D1D0185A543794FE8DAF93E3FC645E276AA52C4BC808
              7001690FEAEDEF9E5935C0B53FA778F5D8292540EE1806AA037CF0D1090012B6
              C14B37BF61247DB5F4502567DD1EF399996DEFCD1486954BE0F596B3F5FE1665
              3FB1D90DA4CD1A82C15BEF124366E98D7CC978E646E9E400825D19D3738ED183
              5D749E4C2F0B10AA0BF0FAE17DCA7E96EE81F767468A9277785BD8E5BF97B3FA
              152E1A1385106D3ECD7D2C0DAF2D0B30974C73F1D2AF45F196E610F54D0DF972
              CACEF0F95CF127FF3E771DCF563EC0C47C6C3100200407180EBF4D7738591220
              1A4D70EAB3EF8BE2BB77B6B1A70060D4F8034366555D2C27BFDFABF7E8F06D49
              8060A092FD4F7715C5B7B43602D82CDC1FD7B2F17C5D40F33374F78B00B8850B
              805736767360C3C300F4FC3540DCD601909AD892F32901AAAAFCEC79BC43899F
              30ED38500D20C45A5F2922BF89967D90A82425B11C4073D9C67C3C6EEB6C9BEC
              07E0F9AA368E0676D03F33CCA7894BC5E96D3BFF2FCAF1556C4B19CBFDEEF46E
              C62BCA9D76A1EB867F280FE3D4BD54BEB1C3C705E24861ACE431BCA53EBDFDC4
              D1750360F4A0CFAFB9CF23685B45EB315DF775D11D367281DBFF1A769E4CBB3D
              E66320BF5BBEA138E3769B3B0B93C37ACC4081FC63479E007A8107815A605AC0
              A894DAA0DEF18E12F01FF3F677CE6F6741DF0000000049454E44AE426082}
          end>
      end
      item
        Name = 'ok'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000473424954080808087C0864880000000970485973000000EC000000
              EC01792871BD0000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A000003CC494441545885B597EB4F1C5518879F7366
              6F2E4A89A96213ACB6340A515BACA4B14D695AD410B6BA10141B5AE3BF60DCD8
              A8959B7E30D518FD664CF096189BA60491592E6913495A295F34B1856AD2948B
              4A136D6A94B66C032C33AF1FCA02BB3B7B815D7E9F66E67DCF797EEFC9CC99F7
              28B254B02778CF82AD9FD722D5366A87C27E1854D19DA84C839A042E820C1A06
              7D669D792B9B7955A6849AAE864D86B25A15BC0AF8B3F47B5BC1096DC807669D
              39B626038DA71AEFBAED9E7B1B5B85501464094E5414F8D8F6CDB70D0406E6B2
              3610EC096EB32CF51DF0C41AC1F112860D97349875E6B58C0602DDF5155AE4B4
              C0FD79812F79604AA1037D0DDD97521A08F604B7D9963A9F6FF80ADA9F86965D
              2B5742C72EF67FB5DF6759AA73DDE000C266CB52DDB5FDB5DE2403054585C780
              8A75832F6BB731EB698F3350D3D5B0095B85F245F0B97C546F3E8056DA312E10
              AAEDAE2F5D326028AB35874F2D4E5EC34BEBD3EF107AEA358E56863094E194E6
              D1226F02A8DAFEDA423DEBF98BEC3799B4F0B6DDCD6CBF6FF9EBFDF1EA101FFD
              FC099658F1C942C46F791ED06ACE7B301F709FCBC7BB7B5AE3E00055257B797C
              E363C9031405117734A0B54875AEF0D8B23B8106264F33727DD4719CB2ED67B4
              8DDA9109B0C15B983296AA720073BC974F2F7C8620CE0694DAAE15B2251D7C5F
              4915DFD47E4D53D9A1A458A6CA3B46BE48095FD4560DA42C6F5F49156F54BE8E
              569A23E54D71269C5EB895F07495C724B0C1952A5876EFA31CAD0CA1D4F26E7D
              A4BC0941F8FE8A49FB9E16C7CACDF1DE6C2A5F920BB8096C4C0C4CDDBACAC48D
              094A8B4AE39EBF527E98E71E7A96627FF28E6D8E87E918F9326BB8821B5AEE74
              32498A44231C1B6AE5CA7FC9FD8413BC676C75F0454D68855C48158D4423349F
              6F73349108FF7C74D570042E6A90C1744991688496F3ED8C4D8FE715BE68E107
              ED5FF0F60233E9D266A233340FB52599C8092E44FC0BDE01DDF972E78C829399
              F2134DF48C85E918CDFE6D7770F0ED227BA907FC0D70671A56E8296467F1939C
              9D3A97039C39EDB2CBC3C1F0A40170F9E4E57F1F39545600ECCD38D29AE3F79B
              7FAC151CD387BDF56617ACE888FEBE5EDC029CCB75E68C12866DDFFC7BB1DBC4
              A6B478C1523F2978705DE0E99A5200B3CEBCA6D00181A9F5806BCB0E249E0D92
              9AB6BE86EE4B86DBDE29C8D9BCC1856143CBAEF04BE15F13438E5D63F885F03F
              E28BD628380ECCE7809E07DEF75B9E034EA722C8E2707AB0EBC5ADA885B7100E
              AFA2719D41E48476CBF17030ECF8AFC9DA404C8DA71AEF8EB8A30125528D50A1
              145B048A16279916615214BF2864305A30DB7FA6E64C249B79FF07160F8AA441
              A46B8A0000000049454E44AE426082}
          end>
      end
      item
        Name = 'find'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000473424954080808087C0864880000000970485973000000EC000000
              EC01792871BD0000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A000003F1494441545885C5964D6C545514C77FE7BE
              F7663A1F6D479AD25A5B1A53D088A641EC82042406D31093A2524217E846E286
              1895C4B4B220D19D34C628EDC2B850172E58106362242186D818AB0994D69818
              42D5C682A554847E0D1D3A6FDE7BD7051DE64D9999372D62CF6AFEE7DD737EFF
              3BEFDC3B23DC431C19B69FF2445E0076816E04A9076E02530217D0F2B558C6A9
              63AD3253AC87AC06DC336C6F43A417D859C6F214D02F9EF95E6F9BCCDD938177
              07B499AA763E00DE5849DD12E88A88DE7BECC9D0903FAF5600AF48553BDF1482
              0B1037A13622AC0B0B5681AE1A1EF2B47C7FF8DBC5D796D70687D6D23392F902
              9197FCE9A8055B6B142D0945DCCCE53D0D57539A5F6F788CCD6BF452DE9E7449
              4F3858F5C6C1BE17239F976DA07BC47E5D903E7FEE9184F04C835170B7FE985C
              D09CFECB6576DC257DC5014059E2861EA0E9A37DB1AB81AFE0F0CF3A21C83BFE
              5C6B8DA2BD31180ED010139E7FD820BAE0DDC979196DB8AE9C8032662084F326
              50E36FB8BDBEECD121E981AD843DCF55E4C132B37AE75B5FDE6A0EEC249AAE3B
              9F811DF50A55E6D9497A9074976A2D615B5B28F7D0D562C3DB250D749F5F6CD1
              B039ABEBA2426DA43CBA1F9E8D964D669ED68BBAA3A40125E666BFDE105F3D1C
              405942D4B701CFA6B6A4018DF7A05F5785820D148367A3B62687F41C2F1C3403
              51BF30035607C101C2E1DC26C4454AB61451537E9DCAE8624BCB82034CCFE68E
              A38424537A4F9E9EF0CBA95B850D940B571AA66FF80C582A55D240AADA1C1298
              CFEA4B494DC6CB5F532E1C606EC6C35FAEC28C9434D0BF49D25AF4E9AC4EBBF0
              CBF55C8B95C00518184CE7E594A93F0EBE885CE9F7EBF3D73DA6527A457080B1
              D10C33BEF76FC464EE7867F464A081DE366B70F1DAC485AC763D38356C934C97
              AACA8FC9CB0E3F9CB5F372AA5A75031841C5ED1D9D3DC98B230712ADDB314215
              A4275CE6C71D2E8E66685A6F52112B7137383034647376381F6EAD5343FDFBA2
              8720E0E7B8BDA3B34734BD00B1E647D9B0FB28E9C9FC935019576C79DCA4AECE
              201C125C0D0B373D7E1F73F8ED0F8765338B11977FAE85A38D27BBC42E69C00F
              07989F9D21BEF16936EEE80667557F2531ABD425CB8A6CFDB04BA6B3B9829D0A
              C1E7666FD754353EC196FDEFDB92A90A15AA2D14628A6725D489BEFD9197973F
              BB6B084BC1019C99F1814F5E6D08871ACC4356A5BA8C2945AF4789C8A255639C
              31D6D354080ECBBE81207834161F183EF7E32E7FCDC1415D59F977EA802BC663
              92F19A51326F28FED421CE1CDF13192C66EE2E03AB81FF17216B090790DD1D7B
              5FD15A3E2B068FC462DF8D9CFBE9D9FB0107505ACBD1B582C3ED5390582B78D6
              C05785DEF9FF010750F6C2F4113B9D1E15A5B4619A9968ACF2D3FB357085E25F
              3F83B70B0B035AE70000000049454E44AE426082}
          end>
      end>
    Left = 576
    Top = 8
  end
  object VirtualImageList1: TVirtualImageList
    Images = <
      item
        CollectionIndex = 1
        CollectionName = 'delete'
        Name = 'delete'
      end
      item
        CollectionIndex = 2
        CollectionName = 'edit'
        Name = 'edit'
      end
      item
        CollectionIndex = 4
        CollectionName = 'new'
        Name = 'new'
      end>
    ImageCollection = ImageCollection1
    Width = 32
    Height = 32
    Left = 368
    Top = 8
  end
  object VirtualImageList2: TVirtualImageList
    Images = <
      item
        CollectionIndex = 1
        CollectionName = 'delete'
        Name = 'delete'
      end
      item
        CollectionIndex = 2
        CollectionName = 'edit'
        Name = 'edit'
      end
      item
        CollectionIndex = 4
        CollectionName = 'new'
        Name = 'new'
      end
      item
        CollectionIndex = 0
        CollectionName = 'cancel'
        Name = 'cancel'
      end
      item
        CollectionIndex = 5
        CollectionName = 'ok'
        Name = 'ok'
      end
      item
        CollectionIndex = 3
        CollectionName = 'exit'
        Name = 'exit'
      end
      item
        CollectionIndex = 6
        CollectionName = 'find'
        Name = 'find'
      end>
    ImageCollection = ImageCollection1
    Left = 472
    Top = 8
  end
end
