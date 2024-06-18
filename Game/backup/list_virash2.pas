unit List_virash2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  StdCtrls;

type

  { TForm10 }

  TForm10 = class(TForm)
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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Timer2: TTimer;
    Timer_anim2: TTimer;
    Timer_voda2: TTimer;
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer_anim2Timer(Sender: TObject);
   procedure Timer_voda2Timer(Sender: TObject);
  private

  public

  end;

var
  Form10: TForm10;
   shkal_rast_2,timer2_rab,rab_2,anim2,raz2:integer;
implementation
       uses list_sad1,dialog1;
{$R *.lfm}

{ TForm10 }



procedure TForm10.Image6Click(Sender: TObject);
begin
     if  (form10.label5.visible=true)
             then begin
                      form3.image16.ImageIndex:=form10.image1.imageindex;
                      form3.Image28.ImageIndex:=1;  end;
  form10.Image2.hide;
  form10.Image3.hide;
        Form3.Show;
        Form10.Hide;
end;

procedure TForm10.Image2Click(Sender: TObject);
begin
  deistv:=2;
     form11.label7.visible:=false;
    form11.label4.visible:=false;
    form11.label6.visible:=true;
    form11.Show;
end;

procedure TForm10.Image8Click(Sender: TObject);
begin
    if (form10.image4.ImageIndex<=4)and ( timer2_rab=0) and  (rab_2=1)
            then  begin
               form3.Image28.ImageIndex:=1;
              form10.image4.ImageIndex:=21;
           form10.Image8.ImageIndex:=5;
           form10.Image8.Enabled:=False;
             form10.label2.Enabled:=False;end // 21-индекс шкалы воды (полный)
      else
      begin

      form3.Image28.ImageIndex:=1;
      form10.Image7.ImageIndex:=3;
      form10.Image8.ImageIndex:=5;
      form10.Image9.ImageIndex:=8;
        form10.label2.Enabled:=False;
        form10.label3.Enabled:=False;
        form10.label4.Enabled:=False;
      form10.Image8.Enabled:=False;
      form10.Image7.Enabled:=False;
      form10.Image9.Enabled:=False;

      case  opr_vid of
     1,2: case (shkal_rast_2)   of    // поливаем когда нужно, но не два раза
                    8,24,40: form10.image4.ImageIndex:=21;
                    end;

     3,4: case (shkal_rast_2)   of
                    18,54,72: form10.image4.ImageIndex:=21;
                    end;
      end;
    begin if (rab_2=0)
                then begin
                  form10.image4.ImageIndex:=21;
                       Form10.timer_voda2.Enabled:=True;
                      Form10.timer2.Enabled:=True;
                      timer2_rab:=0;
                      form10.Image11.Show;form10.Timer_anim2.enabled:=true;
                      rab_2:=1; end
                else begin
                      if (shkal_rast_2<>20) then
                     { Form10.image1.imageindex:= Form10.image1.imageindex+1;}

                      Form10.timer2.Enabled:=True;
                      timer2_rab:=0;
                       end;
                end;

               end;
      case anim2 of
           1:begin form10.Image11.Show;form10.Timer_anim2.enabled:=true; end;
          2:begin form10.Image12.Show;form10.Timer_anim2.enabled:=true; end;
       end;
    end;

procedure TForm10.Image9Click(Sender: TObject);
begin
   deistv:=1;
   form11.label7.visible:=false;
    form11.label6.visible:=false;
    form11.label4.visible:=true;
    form11.Show;
end;



procedure TForm10.Timer2Timer(Sender: TObject);
begin

         shkal_rast_2:= shkal_rast_2+1;
                   case  opr_vid of
                 1,2:form10.image2.imageindex:= shkal_rast_2;
                 3,4:form10.image3.imageindex:= shkal_rast_2;
                  end;
                  { end; }
        case  opr_vid of
    1,2:begin
              case (shkal_rast_2) of    // кнопка удобрения-вода активна или нет
                    8,24,40: if ((form10.Image8.ImageIndex)<=5)then begin  form10.Image8.ImageIndex:=4; form10.Image8.Enabled:=True; form10.label2.Enabled:=True; anim2:=1; end;
                    16,32: if ((form10.Image7.ImageIndex)<=3)then begin form10.Image7.ImageIndex:=2;form10.Image7.Enabled:=True;form10.label3.Enabled:=True;anim2:=2; end;
                     20: begin form10.Image9.ImageIndex:=7;form10.Image9.Enabled:=True;form10.label4.Enabled:=True;end;
                     41: begin Form10.Image2.Enabled:=true;Form10.label5.Visible:=true; form10.Timer_voda2.Enabled:=false;form10.image4.imageindex:=0; end;
              end;
               case (shkal_rast_2) of    //   остановить таймер
                    8,16,24,20,32,40,41:begin form3.Image28.ImageIndex:=6;  timer2_rab:=1;end;
              end;
         end;

    3,4: begin     // таймер по 2 виду протокола
               case (shkal_rast_2) of    // кнопка удобрения-вода активна или нет
                   18,54,72: if ((form10.Image8.ImageIndex)<=5)
                           then begin  form10.Image8.ImageIndex:=4;
                                       form10.Image8.Enabled:=True;
                                       anim2:=1; end;
                   9,27,45,63: if ((form10.Image7.ImageIndex)<=3)
                           then begin form10.Image7.ImageIndex:=2;
                                      form10.Image7.Enabled:=True;
                                       anim2:=2;end;
                  { 36: }

                 end;
                case (shkal_rast_2) of    //   остановить таймер
                   18,36,54,72,9,27,45,63,73: begin form3.Image28.ImageIndex:=6;  timer2_rab:=1;end;
                  end;   // 0-ложь 1-правда timer1_rab-переменная будет ли работать таймер или нет

           end;
   end;
     if timer2_rab=1 then form10.timer2.Enabled:=false; // от процедуры зависит будет ли работать таймер

end;

procedure TForm10.Timer_anim2Timer(Sender: TObject);
begin
   form10.image11.hide;
    form10.image12.hide;
   Form10.Timer_anim2.Enabled:=false;
  if raz2=1 then begin
           Form10.image1.imageindex:= Form10.image1.imageindex+1;
           form3.Image16.ImageIndex:=Form10.Image1.ImageIndex;end
             else raz2:=1;
end;

procedure TForm10.Timer_voda2Timer(Sender: TObject);
begin
  if (form10.image4.ImageIndex>0)
          then begin form10.image4.ImageIndex:=form10.image4.ImageIndex-1;
                     if  (form10.image4.ImageIndex<=4)
                             then   begin
                                     form3.Image28.ImageIndex:=24;
                                      form10.Image8.ImageIndex:=4;
                                      form10.Image8.Enabled:=True;
                                      form10.label2.Enabled:=True;
                                     end;
               end;
  end;

end.

