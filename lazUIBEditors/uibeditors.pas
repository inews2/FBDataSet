{ ���� ���� ��� ������������� ������ Lazarus. �� �������������!
�������� ��� ������������ ������ ��� ���������� � ��������� ������.
 }

unit UIBEditors; 

interface

uses
  jvuibdatabaseedit, jvuibtransactionedit, laz_editors_register, 
    LazarusPackageIntf; 

implementation

procedure Register; 
begin
  RegisterUnit('laz_editors_register', @laz_editors_register.Register); 
end; 

initialization
  RegisterPackage('UIBEditors', @Register); 
end.
