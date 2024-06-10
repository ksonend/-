unit List_Inf_Rasten;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons;

type

  { TForm7 }

  TForm7 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure Image5Click(Sender: TObject);
  private

  public

  end;

var
  Form7: TForm7;

implementation
            uses List_semena1;
{$R *.lfm}

{ TForm7 }

procedure TForm7.Image5Click(Sender: TObject);
begin
        Form4.Show;
        Form7.Hide;
end;

end.

