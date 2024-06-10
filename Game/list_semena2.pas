unit List_semena2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ExtCtrls,
  StdCtrls;

type

  { TForm6 }

  TForm6 = class(TForm)
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label2: TLabel;
    Label3: TLabel;
    procedure Image18Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private

  public

  end;

var
  Form6: TForm6;

implementation
           uses list_semena1,list_sad1;
{$R *.lfm}

{ TForm6 }

procedure TForm6.Image18Click(Sender: TObject); //
begin
        Form4.Show;
        Form6.Hide;
end;
 procedure TForm6.Label2Click(Sender: TObject);
begin
        Form4.Show;
        Form6.Hide;
end;

procedure TForm6.Timer2Timer(Sender: TObject);
begin

end;

procedure TForm6.Image1Click(Sender: TObject);
begin
        Form3.Show;
        Form6.Hide;
end;


end.

