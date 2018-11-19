object frmMain: TfrmMain
  Left = 172
  Top = 102
  Width = 781
  Height = 538
  Caption = 'Alexs Dataset Example'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 492
    Width = 773
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 773
    Height = 492
    ActivePage = tabDirectories
    Align = alClient
    TabIndex = 1
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
    end
    object tabDirectories: TTabSheet
      Caption = 'Directories'
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 765
        Height = 464
        ActivePage = tabCustomer
        Align = alClient
        TabIndex = 1
        TabOrder = 0
        TabPosition = tpBottom
        OnChange = PageControl2Change
        object tabSprCountry: TTabSheet
          Caption = 'Country'
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 757
            Height = 438
            Align = alClient
            DataSource = dsSprCountry
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
        object tabCustomer: TTabSheet
          Caption = 'Customer'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 757
            Height = 438
            Align = alClient
            DataSource = dsSprCustomer
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
      end
    end
  end
  object JvUIBDataBase: TJvUIBDataBase
    Params.Strings = (
      'sql_dialect=3'
      'lc_ctype=NONE'
      'user_name=sysdba'
      'password=masterkey')
    DatabaseName = 'C:\Program Files\Firebird\Firebird_1_5\examples\employee.fdb'
    UserName = 'sysdba'
    PassWord = 'masterkey'
    LibraryName = 'fbclient.dll'
    Left = 24
    Top = 40
  end
  object trRead: TJvUIBTransaction
    DataBase = JvUIBDataBase
    Options = [tpNowait, tpRead, tpReadCommitted, tpAutoCommit, tpRecVersion]
    Left = 56
    Top = 40
  end
  object trWrite: TJvUIBTransaction
    DataBase = JvUIBDataBase
    Options = [tpConsistency, tpNowait, tpWrite, tpReadCommitted, tpAutoCommit, tpRecVersion]
    Left = 88
    Top = 40
  end
  object quSprCountry: TFBDataSet
    AutoCommit = True
    AutoUpdateOptions.WhenGetGenID = wgNever
    AutoUpdateOptions.IncrementBy = 1
    DetailConditions = []
    DataBase = JvUIBDataBase
    Macros = <>
    Option = [poTrimCharFields, poRefreshAfterPost]
    Transaction = trRead
    UpdateTransaction = trWrite
    SQLSelect.Strings = (
      'select'
      '  *'
      'from'
      '  COUNTRY'
      'order by'
      '  COUNTRY.COUNTRY')
    SQLRefresh.Strings = (
      'select'
      '  *'
      'from'
      '  COUNTRY'
      'where'
      '  COUNTRY.COUNTRY = :COUNTRY')
    SQLEdit.Strings = (
      'update'
      '  COUNTRY'
      'set'
      ' COUNTRY = :COUNTRY,'
      ' CURRENCY = :CURRENCY')
    SQLDelete.Strings = (
      'delete'
      'from'
      '  COUNTRY'
      'where'
      '  COUNTRY.COUNTRY = :COUNTRY')
    SQLInsert.Strings = (
      'insert into COUNTRY'
      '  (COUNTRY, CURRENCY)'
      'values'
      '  (:COUNTRY, :CURRENCY)')
    Left = 88
    Top = 96
  end
  object dsSprCountry: TDataSource
    DataSet = quSprCountry
    Left = 56
    Top = 96
  end
  object dsSprCustomer: TDataSource
    DataSet = quSprCustomer
    Left = 56
    Top = 130
  end
  object quSprCustomer: TFBDataSet
    AutoUpdateOptions.KeyField = 'CUST_NO'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AutoUpdateOptions.GeneratorName = 'CUST_NO_GEN'
    AutoUpdateOptions.IncrementBy = 1
    DetailConditions = []
    DataBase = JvUIBDataBase
    Macros = <>
    Option = [poTrimCharFields, poRefreshAfterPost]
    Transaction = trRead
    UpdateTransaction = trWrite
    SQLSelect.Strings = (
      'select'
      '  CUSTOMER.ADDRESS_LINE1,'
      '  CUSTOMER.ADDRESS_LINE2,'
      '  CUSTOMER.CITY,'
      '  CUSTOMER.CONTACT_FIRST,'
      '  CUSTOMER.CONTACT_LAST,'
      '  CUSTOMER.COUNTRY,'
      '  CUSTOMER.CUSTOMER,'
      '  CUSTOMER.CUST_NO,'
      '  CUSTOMER.ON_HOLD,'
      '  CUSTOMER.PHONE_NO,'
      '  CUSTOMER.POSTAL_CODE,'
      '  CUSTOMER.STATE_PROVINCE'
      'from'
      '  CUSTOMER'
      'order by'
      '  CUSTOMER.CUSTOMER')
    SQLRefresh.Strings = (
      'select'
      '  CUSTOMER.ADDRESS_LINE1,'
      '  CUSTOMER.ADDRESS_LINE2,'
      '  CUSTOMER.CITY,'
      '  CUSTOMER.CONTACT_FIRST,'
      '  CUSTOMER.CONTACT_LAST,'
      '  CUSTOMER.COUNTRY,'
      '  CUSTOMER.CUSTOMER,'
      '  CUSTOMER.CUST_NO,'
      '  CUSTOMER.ON_HOLD,'
      '  CUSTOMER.PHONE_NO,'
      '  CUSTOMER.POSTAL_CODE,'
      '  CUSTOMER.STATE_PROVINCE'
      'from'
      '  CUSTOMER'
      'where'
      '  CUSTOMER.CUST_NO = :CUST_NO')
    SQLEdit.Strings = (
      'update'
      '  CUSTOMER'
      'set'
      '  ADDRESS_LINE1 = :ADDRESS_LINE1,'
      '  ADDRESS_LINE2 = :ADDRESS_LINE2,'
      '  CITY = :CITY,'
      '  CONTACT_FIRST = :CONTACT_FIRST,'
      '  CONTACT_LAST = :CONTACT_LAST,'
      '  COUNTRY = :COUNTRY,'
      '  CUSTOMER = :CUSTOMER,'
      '  ON_HOLD = :ON_HOLD,'
      '  PHONE_NO = :PHONE_NO,'
      '  POSTAL_CODE = :POSTAL_CODE,'
      '  STATE_PROVINCE = :STATE_PROVINCE'
      'where'
      '  CUSTOMER.CUST_NO = :CUST_NO')
    SQLDelete.Strings = (
      'delete'
      'from'
      '  CUSTOMER'
      'where'
      '  CUSTOMER.CUST_NO = :CUST_NO')
    SQLInsert.Strings = (
      'insert into CUSTOMER'
      '  (ADDRESS_LINE1, ADDRESS_LINE2, CITY, CONTACT_FIRST,'
      '   CONTACT_LAST, COUNTRY, CUSTOMER, CUST_NO, ON_HOLD,'
      '   PHONE_NO, POSTAL_CODE, STATE_PROVINCE)'
      'values'
      '  (:ADDRESS_LINE1, :ADDRESS_LINE2, :CITY, :CONTACT_FIRST,'
      '   :CONTACT_LAST, :COUNTRY, :CUSTOMER, :CUST_NO, :ON_HOLD,'
      '   :PHONE_NO, :POSTAL_CODE, :STATE_PROVINCE)')
    Left = 88
    Top = 132
  end
  object ActionList1: TActionList
    Left = 480
    Top = 208
  end
end
