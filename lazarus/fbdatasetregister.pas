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
(* Unit owner : Lagunov Aleksey <alexs@w7site.ru>                               *)
(*                                                                              *)
(********************************************************************************)

unit FBDataSetRegister;

 {$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LazarusPackageIntf;

procedure Register;
implementation
uses UIBStoredProc, FBCustomDataSet, DB;

{$I fbdatasetregister.inc}

procedure Register;
begin
  RegisterUnit('FBCustomDataSet', @RegisterFBCustomDataSet);
  RegisterUnit('UIBStoredProc', @RegisterJvUIBStoredProc);
end;

end.

