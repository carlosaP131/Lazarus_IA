unit uPuntuales;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils,Uvarios,Math;

 const
   lam=255;

   procedure FPNegativo(var M1: Mat3D; var M2 : Mat3D; mc,nr:Integer);
   procedure FPGris1(var M1: Mat3D; var M2 : Mat3D; mc,nr:Integer);
   procedure FPGris2(var M1: Mat3D; var M2 : Mat3D; mc,nr:Integer);
implementation
  procedure FPNegativo(var M1: Mat3D; var M2: Mat3D; mc, nr: Integer);
  var
    i,j,k: Integer;
    begin
      SetLength(M2,mc,nr,3);
      for j:=0 to nr-1 do
      for i:=0 to mc-1 do
      for k:=0 to 2 do
      M2[i][j][k]:= not M1[i][j][k];

    end;
  procedure FPGris1(var M1: Mat3D; var M2: Mat3D; mc, nr: Integer);
  var
    i,j,Gris:Integer;
    begin

       SetLength(M2,mc,nr,3);
      for j:=0 to nr-1 do
      for i:=0 to mc-1 do
      begin
       Gris := Round(M1[i][j][0] * 0.299 + M1[i][j][1] * 0.587 + M1[i][j][2] * 0.114);

      M2[i][j][0] := Gris;
      M2[i][j][1] := Gris;
      M2[i][j][2] := Gris;
    end;
     end;
  procedure FPGris2(var M1: Mat3D; var M2: Mat3D; mc, nr: Integer);
  var
    i,j,Gris:Integer;
    begin

       SetLength(M2,mc,nr,3);
      for j:=0 to nr-1 do
      for i:=0 to mc-1 do
      begin
       Gris := Round((M1[i][j][0] + M1[i][j][1]  + M1[i][j][2])div 3);

      M2[i][j][0] := Gris;
      M2[i][j][1] := Gris;
      M2[i][j][2] := Gris;
    end;
     end;

end.

