unit List_virach1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ExtCtrls,
  ComCtrls, StdCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    ImageList_zdorov: TImageList;
    ImageList_zdorov2: TImageList;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    private

  public

  end;

var
  Form8: TForm8;
        zdorov, shkal_rast,ivi1,ivi2: integer;
        net,net2,shkal_rast2,shkal_1_rast,shkal_2_rast: integer;
         timer1_rab,shkal_rast_1,shkal_rast_2,rab_1,rab_2:integer;
implementation
          uses list_sad1,dialog1;
{$R *.lfm}

{ TForm8 }


procedure sohr_rast;
begin
    case (s) of
     1: begin form3.Image1.ImageIndex:=Form8.Image1.ImageIndex;end;
     2: begin form3.Image16.ImageIndex:=Form8.Image1.ImageIndex; end;
       end;
end;

procedure TForm8.Image6Click(Sender: TObject);
begin

  form8.Image2.hide;
  form8.Image3.hide;
        Form3.Show;
        Form8.Hide;
end;

procedure TForm8.Image2Click(Sender: TObject);
begin
  deistv:=2;
    form11.label4.visible:=true;
    form11.Show;
end;


procedure TForm8.Image8Click(Sender: TObject);  // дествия с цветком
begin
      form3.Image14.ImageIndex:=1;
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
              sohr_rast;




end;

procedure TForm8.Image9Click(Sender: TObject);
begin
   deistv:=1;
    form11.label4.visible:=true;
    form11.Show;
end;

procedure TForm8.Timer1Timer(Sender: TObject);   // 1 таймер для 1 места
begin
     shkal_rast_1:= shkal_rast_1+1;
       if s=1 then begin
             case  opr_vid of
                 1,2:form8.image2.imageindex:= shkal_rast_1;
                 3,4:form8.image3.imageindex:= shkal_rast_1;
                  end;
                   end;
        case  opr_vid of
    1,2:begin

              case (shkal_rast_1) of    // кнопка удобрения-вода активна или нет
                    8,24,40: if ((form8.Image8.ImageIndex)<=5)then begin  form8.Image8.ImageIndex:=4; form8.Image8.Enabled:=True; form8.label2.Enabled:=True; end;
                    16,32: if ((form8.Image7.ImageIndex)<=3)then begin form8.Image7.ImageIndex:=2;form8.Image7.Enabled:=True;form8.label3.Enabled:=True;end;
                     20: begin form8.Image9.ImageIndex:=7;form8.Image9.Enabled:=True;form8.label4.Enabled:=True;end;
                     41: begin Form8.Image2.Enabled:=true;Form8.label5.Visible:=true; end;
              end;
               case (shkal_rast_1) of    //   остановить таймер
                    8,16,24,20,32,40,41:begin form3.Image14.ImageIndex:=6;  timer1_rab:=1;end;
              end;
         end;

    3,4: begin     // таймер по 2 виду протокола
               case (shkal_rast_1) of    // кнопка удобрения-вода активна или нет
                   18,36,54,72: if ((form8.Image8.ImageIndex)<=5)
                           then begin  form8.Image8.ImageIndex:=4;
                                       form8.Image8.Enabled:=True; end;
                   9,27,45,63: if ((form8.Image7.ImageIndex)<=3)
                           then begin form8.Image7.ImageIndex:=2;
                                      form8.Image7.Enabled:=True; end;


                 end;
                case (shkal_rast_1) of    //   остановить таймер
                   18,36,54,72,9,27,45,63,73: begin form3.Image14.ImageIndex:=6;  timer1_rab:=1;end;
                  end;   // 0-ложь 1-правда timer1_rab-переменная будет ли работать таймер или нет

           end;
   end;
     if timer1_rab=1 then timer1.Enabled:=false; // от процедуры зависит будет ли работать таймер
      { if s=1 then  form3.Image14.ImageIndex:=1;   form3.Image14.ImageIndex:=6; form3.Image14.ImageIndex:=6;   }
  end;

end.

