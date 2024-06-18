unit List_progress;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image20: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Image5Click(Sender: TObject);
  private

  public

  end;

var
  Form9: TForm9;

implementation
          uses List_sad1;
{$R *.lfm}

{ TForm9 }

procedure TForm9.Image5Click(Sender: TObject);
begin
        Form3.Show;
        Form9.Hide;
end;

end.

