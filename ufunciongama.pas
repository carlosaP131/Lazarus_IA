unit Ufunciongama;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tfunciongama }

  Tfunciongama = class(TForm)
    Baceptar: TButton;
    Bcancelar: TButton;
    Label1: TLabel;
    lblPosicion: TLabel;
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  funciongama: Tfunciongama;

implementation

{$R *.lfm}

{ Tfunciongama }

procedure Tfunciongama.Label1Click(Sender: TObject);
begin

end;

end.

