unit List1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ImageList_Base: TImageList;
    ImageList_fon: TImageList;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
     private

  public

  end;

var
  Form1: TForm1;
          a,w,e,vid:integer;
          probel:integer;
implementation
       uses List_pravila1, list_sad1, list_semena1,zagruzka;
{$R *.lfm}

{ TForm1 }

procedure TForm1.Image1Click(Sender: TObject);   // начать игру
begin
  form13.Show;
  if a=0 then
        begin
        form2.Picture1.ImageIndex:=0;
        n:=0;
        Form2.image2.ImageIndex:= 16;
        Form2.image3.ImageIndex:= 13;
        Form2.Show;
        Form1.Hide;
        end
     else
      begin
       Form3.Show;
        Form1.Hide;
        end;
     a:=1;

     form1.Label5.Caption:='Подолжить игру';
      form1.Label5.font.Size:= 20;
end;


procedure TForm1.Image2Click(Sender: TObject);   // правила
begin
  form13.Show;
     n:=0;
        w:=1;
        Form2.Picture1.ImageIndex:= n;
        Form2.image2.ImageIndex:= 16;
        Form2.image3.ImageIndex:= 13;
        Form2.Image4.Hide; Form2.Label4.Hide;      // прячем "начать играть"
        Form2.Image5.Hide; Form2.Label3.Hide;     // прячем "пропустить"
        Form2.Show;
        Form1.Hide;
end;


procedure TForm1.Image3Click(Sender: TObject);  // выход
begin
    close;
end;

  procedure TForm1.Image4Click(Sender: TObject);   // библиотека
begin
  form13.Show;
   e:=1;
    Form4.Show;
    Form1.Hide;
end;

end.

