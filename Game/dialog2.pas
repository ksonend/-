unit dialog2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm12 }

  TForm12 = class(TForm)
    Image1: TImage;
    Image20: TImage;
    Image3: TImage;
    Label2: TLabel;
    Label3: TLabel;
    procedure Label2Click(Sender: TObject);
  private

  public

  end;

var
  Form12: TForm12;

implementation

{$R *.lfm}

{ TForm12 }

procedure TForm12.Label2Click(Sender: TObject);
begin
      form12.hide;
end;

end.

