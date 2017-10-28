unit uayuda;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  LCLType;

type

  { TForm2 }

  TForm2 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tecla_accion(key : Word);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  tecla_accion(Key);
end;

procedure TForm2.Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  tecla_accion(Key);
end;

procedure TForm2.tecla_accion(Key : Word);
begin
  if Key = VK_ESCAPE then
  begin
    Form2.Close;
  end;
end;

end.

