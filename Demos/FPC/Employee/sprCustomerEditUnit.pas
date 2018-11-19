unit sprCustomerEditUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, Buttons,
  DBCtrls, StdCtrls, DB, FBCustomDataSet, ButtonPanel;

type

  { TsprCustomerEditForm }

  TsprCustomerEditForm = class(TForm)
    ButtonPanel1: TButtonPanel;
    CheckBox1: TCheckBox;
    DBComboBox1: TComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    quSprCountry: TFBDataSet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure sprCustomerEditFormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  sprCustomerEditForm: TsprCustomerEditForm;

implementation
uses MainUnit;

{$R *.lfm}

{ TsprCustomerEditForm }

procedure TsprCustomerEditForm.sprCustomerEditFormCreate(Sender: TObject);
begin
  quSprCountry.DataBase:=MainForm.UIBDataBase1;
  quSprCountry.Transaction:=MainForm.trRead;
  quSprCountry.Open;
  try
    while not quSprCountry.EOF do
    begin
      DBComboBox1.Items.Add(quSprCountry.FieldByName('COUNTRY').AsString);
      quSprCountry.Next;
    end;
  finally
    quSprCountry.Close;
  end;
end;

end.

