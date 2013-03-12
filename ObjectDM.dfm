object DM: TDM
  OldCreateOrder = False
  Left = 544
  Top = 105
  Height = 236
  Width = 281
  object DBConn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=I:\test\Output\Data' +
      'Base\db.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
  object BusTable: TADOTable
    Active = True
    Connection = DBConn
    CursorType = ctStatic
    TableName = 'Bus'
    Left = 112
    Top = 16
    object BusTableBusNumber: TWideStringField
      FieldName = 'BusNumber'
      Size = 8
    end
    object BusTableDriver: TWideStringField
      FieldName = 'Driver'
      Size = 10
    end
  end
  object ExpQuery: TADOQuery
    Connection = DBConn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'BusNumber'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Years'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Months'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From Exp'
      'Where BusNumber=:BusNumber and Years=:Years and Months=:Months')
    Left = 192
    Top = 16
  end
  object UpdateExpQuery: TADOQuery
    Connection = DBConn
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 192
    Top = 88
  end
end
