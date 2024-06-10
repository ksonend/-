unit List_Semena1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ExtCtrls,
  StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
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
    ImageList_1Semen: TImageList;
    ImageList_Vse_Semen: TImageList;
    ImageList_2Semen: TImageList;
    ImageList_3Semen: TImageList;
    Label2: TLabel;
    Label3: TLabel;
    procedure Image19Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation
          uses list_inf_rasten,list_semena2,list1, list_sad1;
{$R *.lfm}

{ TForm4 }

procedure Vid_picture;   //  определяет картинку для растения
begin
  case (vid) of
     1: probel:=1; // идекс картинки из всего листа растений
     2: probel:=8;
     3: probel:=15;
  end;
end;

procedure Vibor_mesta;   //  определяет место растения
begin
   if (e=0) then
       begin
          Vid_picture;
          case (s) of
          1: begin Form3.Image9.hide;
             Form3.Image14.Show;
             Form3.image1.imageIndex:= probel;
               vid_pered_1:=vid;
             Form3.image1.Show;
             Form3.Label2.Show; end;
          2: begin Form3.Image10.hide;
             Form3.image16.imageIndex:= probel;
             vid_pered_2:=vid;
             Form3.Image16.Show;
             Form3.image28.Show;
             Form3.Label3.Show; end;

          end;
       Form3.Show;
       Form4.Hide;
       end;
end;

// процедуры по кнопкам
procedure TForm4.Image19Click(Sender: TObject);  // переход на 2 раздел
begin
     Form6.Show;
       Form4.Hide;
end;
procedure TForm4.Label3Click(Sender: TObject); // переход на 2 раздел+
begin
  Form6.Show;
       Form4.Hide;
end;

procedure TForm4.Image1Click(Sender: TObject);  // выход на прошл.страницу
begin
     if (e=1) then
       begin
     Form1.Show;
     Form4.Hide;
     e:=0;
       end
  else
  begin
     Form3.Show;
     Form4.Hide;
  end;
end;

procedure TForm4.Image2Click(Sender: TObject);   //  выбранное семечко1
begin
  probel:=0;
  Vid:=1;
  Vid_picture;
   Vibor_mesta;
end;

procedure TForm4.Image3Click(Sender: TObject);  // инфа о растении
begin
       Form7.Show;
       Form4.Hide;
end;

procedure TForm4.Image4Click(Sender: TObject);
begin
  probel:=0;
   Vid:=2;
   Vid_picture;
   Vibor_mesta;
end;

procedure TForm4.Image6Click(Sender: TObject);
begin
   probel:=0;
   Vid:=3;
   Vid_picture;
   Vibor_mesta;
end;


end.

