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
    Image2: TImage;
    Image3: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label2: TLabel;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private

  public

  end;

var
  Form10: TForm10;
   shkal_rast_2,timer_rab:integer;
implementation
       uses list_sad1;
{$R *.lfm}

{ TForm10 }

procedure TForm10.Image6Click(Sender: TObject);
begin
  
  form10.Image2.hide;
  form10.Image3.hide;
        Form3.Show;
        Form10.Hide;
end;

procedure TForm10.Image7Click(Sender: TObject);
begin

end;

procedure TForm10.Image8Click(Sender: TObject);
begin

end;

procedure TForm10.Image9Click(Sender: TObject);
begin

end;

procedure TForm10.Timer2Timer(Sender: TObject);
begin
     shkal_rast_2:= shkal_rast_2+1;
  if s=2 then image2.imageindex:= shkal_rast_2;

  case  opr_vid of
   1,2: begin  image2.imageindex:= shkal_rast_2;
    begin
    case (shkal_rast_2) of    //   остановить таймер  !!! нужно установить разные переменные задержек
            8,16,24,32,40,41: timer_rab:=1; end;
      case (shkal_rast_2) of    // кнопка удобрения-вода активна или нет
            8,24,40: if ((form10.Image8.ImageIndex)<=5)then begin  form10.Image8.ImageIndex:=4; form10.Image8.Enabled:=True; end;
            16,32: if ((form10.Image7.ImageIndex)<=3)then begin form10.Image7.ImageIndex:=2;form10.Image7.Enabled:=True;end;
            1..7,9..15,17..23,25..31,33..39: begin form10.Image7.ImageIndex:=3;
                                              form10.Image8.ImageIndex:=5;
                                                form10.Image8.Enabled:=False;
                                              form10.Image7.Enabled:=False;end;
end;
    end;

    end;
    3,4:begin if (s=1) then image3.imageindex:= shkal_rast_2;



     begin     // таймер по 2 виду протокола
             case (shkal_rast_2) of    // кнопка удобрения-вода активна или нет
                   18,36,54,72: if ((form10.Image8.ImageIndex)<=5)
                           then begin  form10.Image8.ImageIndex:=4;
                                       form10.Image8.Enabled:=True; end;
                   9,27,45,63: if ((form10.Image7.ImageIndex)<=3)
                           then begin form10.Image7.ImageIndex:=2;
                                      form10.Image7.Enabled:=True; end;
                   1..8,10..17,19..26,28..35,37..44,46..53,55..62,64..71: begin form10.Image7.ImageIndex:=3;
                                              form10.Image8.ImageIndex:=5;
                                              form10.Image8.Enabled:=False;
                                              form10.Image7.Enabled:=False;end;
                 end;
             case (shkal_rast_2) of    //   остановить таймер
                   18,36,54,72,9,27,45,63,73:   timer_rab:=1; end;   // 0-ложь 1-правда timer_rab-переменная будет ли работать таймер или нет

     end;
    end;
   end;
  if timer_rab=0 then timer2.Enabled:=false;  // от процедуры зависит будет ли работать таймер

end;

end.

