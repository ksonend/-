unit dialog1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm11 }

  TForm11 = class(TForm)
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    ImageList1: TImageList;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private

  public

  end;

var
  Form11: TForm11;
       deistv:integer;
implementation
        uses list_virach1;
{$R *.lfm}

{ TForm11 }

procedure TForm11.Image4Click(Sender: TObject);
begin
  case deistv of
  1:  begin
  form8.timer1.interval:=700;

    form8.Image7.ImageIndex:=3;
      form8.Image8.ImageIndex:=5;
      form8.Image9.ImageIndex:=8;
        form8.label2.Enabled:=False;
        form8.label3.Enabled:=False;
        form8.label4.Enabled:=False;
      form8.Image8.Enabled:=False;
      form8.Image7.Enabled:=False;
      form8.Image9.Enabled:=False;

    begin if (rab_1=0)
                then begin  Form8.timer1.Enabled:=True;
                      timer1_rab:=0; rab_1:=1; end
                else begin
                     if (shkal_rast_1<>20) then begin  image1.imageindex:= image1.imageindex+1;end;
                      Form8.timer1.Enabled:=True;
                      timer1_rab:=0;
                       end;
                end;
           Form8.show;

           Form11.hide;
         end;


  end;
end;

procedure TForm11.Image3Click(Sender: TObject);
begin
   case deistv of
  1:
    begin
    form8.Image7.ImageIndex:=3;
      form8.Image8.ImageIndex:=5;
      form8.Image9.ImageIndex:=8;
        form8.label2.Enabled:=False;
        form8.label3.Enabled:=False;
        form8.label4.Enabled:=False;
      form8.Image8.Enabled:=False;
      form8.Image7.Enabled:=False;
      form8.Image9.Enabled:=False;

    begin if (rab_1=0)
                then begin  Form8.timer1.Enabled:=True;
                      timer1_rab:=0; rab_1:=1; end
                else begin
                     if (shkal_rast_1<>20) then begin  image1.imageindex:= image1.imageindex+1;end;
                      Form8.timer1.Enabled:=True;
                      timer1_rab:=0;
                       end;
                end;

  end;end;


end;

end.

