(********************************************************************************)
(*                        FB/IB Data set (FBDataSet)                            *)
(*                                                                              *)
(* The contents of this file are subject to the GNU LIBRARY GENERAL PUBLIC      *)
(* LICENSE 2 (the "License"); you may not use this file except in compliance    *)
(* with the License. You may obtain a copy of the License at                    *)
(*  http://www.gnu.org/copyleft/lesser.html                                     *)
(*                                                                              *)
(* Software distributed under the License is distributed on an "AS IS" basis,   *)
(* WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for *)
(* the specific language governing rights and limitations under the License.    *)
(*                                                                              *)
(* Unit owner : Lagunov Aleksey <alexs75@hotbox.ru>                             *)
(*                                                                              *)
(********************************************************************************)

const //Exception messages
  sfbeOtherError        = '������ ������';
  sfbeCircularReference = '����������� ������ ��������� ��������� (%s).'; //fbeCircularReference
  sfbeEmptySQLEdit      = '������ ����� SQL ������� �������������� (%s).'; //sfbeEmptySQLEdit
  sfbeDatabaseNotAssigned = '�������� Database �� ��������� (%s)';
  sfbeTransactionNotAssigned = '�������� Transaction �� ��������� (%s)';
  sfbeParameterNotFound = '�������� �� ������ (%s)';
  sfbeNotCachedUpdates  = '�� ������� ����� ����������� (%s)';
  sfbeUserAbort = '�������� �������������';
  sfbeErrorExecuteQ       = '������ ���������� ������� %s (%s).';
  sfbeBlobCannotBeWritten = 'Blob ����� �� ����� ���� �������.';
  sfbeGetRecordInvalidRec = 'GetRecord: ������ ������ ������';

  EReferencedRecordBufferLooseMsg = '������� ���������� �� ������������ ����� ������';
  EReferencedDatSetRecordBufferLooseMsg = '������� ���������� �� ������������ ����� ������ ������';
  EReferencedBLOBCacheLooseMsg    = 'TBLOBCache:������� ���������� ������������ ����� ������';
  EAccessIncorectBLOBCacheMsg = 'TBLOBList: ������� ������� � ��������������� ����';
  ESomeBLOBCacheLoosedMsg = '�������� ��������� ����';

const //Localizations
  slcOk     = 'OK';
  slcCancel = '������';
  slcHelp   = '������';
  //Auto update options window
  slcUpdatedField  = '���������� ����';
  slcGeneratorName = '���������';
  slcIncrementBy   = '����������';
