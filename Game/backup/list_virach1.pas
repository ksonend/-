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
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image2: TImage;
    Image20: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Timer_anim: TTimer;
    Zdorov_1: TImageList;
    Voda: TImageList;
    Zdorov_2: TImageList;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Timer1: TTimer;
    Timer_voda: TTimer;
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer_animTimer(Sender: TObject);
    procedure Timer_vodaTimer(Sender: TObject);
    private

  public

  end;

var
  Form8: TForm8;


         timer1_rab,shkal_rast_1,rab_1,raz1, anim:integer;

implementation
          uses list_sad1,dialog1;
{$R *.lfm}

{ TForm8 }




procedure TForm8.Image6Click(Sender: TObject);
begin
   if  (form8.label5.visible=true)
             then begin
                      form3.image1.ImageIndex:=form8.image1.imageindex;
                      form3.Image14.ImageIndex:=1;  end;
  form8.Image2.hide;
  form8.Image3.hide;
        Form3.Show;
        Form8.Hide;
end;

procedure TForm8.Image2Click(Sender: TObject);
begin
  deistv:=2;
     form11.label7.visible:=false;
    form11.label4.visible:=false;
    form11.label6.visible:=true;
    form11.Show;
end;


procedure TForm8.Image8Click(Sender: TObject);  // действия с цветком
begin
    if ((form8.image4.ImageIndex<=4)and ( timer1_rab=0))  and  (rab_1=1)
            then  begin
               form3.Image14.ImageIndex:=1;
              form8.image4.ImageIndex:=21;
           form8.Image8.ImageIndex:=5;
           form8.Image8.Enabled:=False;
             form8.label2.Enabled:=False;end // 21-индекс шкалы воды (полный)
      else
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

      case  opr_vid of
     1,2: case (shkal_rast_1)   of    // поливаем когда нужно, но не два раза
                    8,24,40: form8.image4.ImageIndex:=21;
                    end;
     3,4: case (shkal_rast_1)   of
                    18,54,72: form8.image4.ImageIndex:=21;
                    end;
      end;
    begin if (rab_1=0)
                then begin
                        form8.image4.ImageIndex:=21;
                       timer_voda.Enabled:=True;
                      timer1.Enabled:=True;
                      timer1_rab:=0;
                        form8.Image11.Show;form8.Timer_anim.enabled:=true;
                      rab_1:=1; end
                else begin
                      if (shkal_rast_1<>20) then
                     { image1.imageindex:= image1.imageindex+1;}

                      Form8.timer1.Enabled:=True;
                      timer1_rab:=0;
                       end;
                end;

               end;
       case anim of
           1:begin form8.Image11.Show;form8.Timer_anim.enabled:=true; end;
          2:begin form8.Image12.Show;form8.Timer_anim.enabled:=true; end;
       end;


end;

procedure TForm8.Image9Click(Sender: TObject);
begin
   deistv:=1;
   form11.label7.visible:=false;
    form11.label6.visible:=false;
    form11.label4.visible:=true;
    form11.Show;
end;

procedure TForm8.Timer1Timer(Sender: TObject);   // 1 таймер для 1 места
begin
         shkal_rast_1:= shkal_rast_1+1;

             case  opr_vid of
                 1,2:form8.image2.imageindex:= shkal_rast_1;
                 3,4:form8.image3.imageindex:= shkal_rast_1;
                  end;
                  { end; }
        case  opr_vid of
    1,2:begin
              case (shkal_rast_1) of    // кнопка удобрения-вода активна или нет
                    8,24,40: if ((form8.Image8.ImageIndex)<=5)then begin  form8.Image8.ImageIndex:=4; form8.Image8.Enabled:=True; form8.label2.Enabled:=True;anim:=1; end;
                    16,32: if ((form8.Image7.ImageIndex)<=3)then begin form8.Image7.ImageIndex:=2;form8.Image7.Enabled:=True;form8.label3.Enabled:=True;anim:=2;end;
                     20: begin form8.Image9.ImageIndex:=7;form8.Image9.Enabled:=True;form8.label4.Enabled:=True;end;
                     41: begin Form8.Image2.Enabled:=true;Form8.label5.Visible:=true; form8.Timer_voda.Enabled:=false;form8.image4.imageindex:=0;form3.image14.ImageIndex:=1; end;
              end;
               case (shkal_rast_1) of    //   остановить таймер
                    8,16,24,20,32,40,41:begin form3.Image14.ImageIndex:=6;  timer1_rab:=1;end;
              end;
         end;

    3,4: begin     // таймер по 2 виду протокола
               case (shkal_rast_1) of    // кнопка удобрения-вода активна или нет
                   18,54,72: if ((form8.Image8.ImageIndex)<=5)
                           then begin  form8.Image8.ImageIndex:=4;
                                       form8.Image8.Enabled:=True;
                                       anim:=1;end;
                   9,27,45,63: if ((form8.Image7.ImageIndex)<=3)
                           then begin form8.Image7.ImageIndex:=2;
                                      form8.Image7.Enabled:=True;
                                      anim:=2;end;
                  { 36: }

                 end;
                case (shkal_rast_1) of    //   остановить таймер
                   18,36,54,72,9,27,45,63,73: begin form3.Image14.ImageIndex:=6;  timer1_rab:=1;end;
                  end;   // 0-ложь 1-правда timer1_rab-переменная будет ли работать таймер или нет

           end;
   end;
     if timer1_rab=1 then form8.timer1.Enabled:=false; // от процедуры зависит будет ли работать таймер
      end;

procedure TForm8.Timer_animTimer(Sender: TObject);
begin
   form8.image11.hide;
   form8.image12.hide;
   Form8.Timer_anim.Enabled:=false;
   if raz1=1 then begin
            image1.imageindex:= image1.imageindex+1;
   form3.Image1.ImageIndex:=Form8.Image1.ImageIndex;end
              else raz1:=1;
end;

procedure TForm8.Timer_vodaTimer(Sender: TObject);
begin
  if (form8.image4.ImageIndex>0)
          then begin form8.image4.ImageIndex:=form8.image4.ImageIndex-1;
                     if  (form8.image4.ImageIndex<=4)
                             then   begin
                                     form3.Image14.ImageIndex:=24;
                                      form8.Image8.ImageIndex:=4;
                                      form8.Image8.Enabled:=True;
                                      form8.label2.Enabled:=True;
                                     end;
               end;
  end;



end.

