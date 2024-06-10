unit List_pravila1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons;

type

  { TForm2 }

  TForm2 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ImageList_pravila: TImageList;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Picture1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);



  private

  public

  end;

var
  Form2: TForm2;
      n:integer;

implementation
         uses List_sad1, List1;
{$R *.lfm}

{ TForm2 }

procedure TForm2.Image1Click(Sender: TObject);   // на прошл.страницу
begin
        Form1.Show;
        Form2.Hide;
end;

procedure TForm2.Image2Click(Sender: TObject);   // назад
begin
     if (n>0)  then
          begin
          n:= n-1;
  Picture1.ImageIndex:= n;
  if  (Picture1.ImageIndex= 0) then  Form2.Image2.imageindex:=16
  else Form2.Image3.imageindex:=13;
     if ((n=15) and (w=0)) then  begin Image4.show ;label4.Show; end
  else begin Image4.hide;label4.hide; end;
          end;
end;

procedure TForm2.Image3Click(Sender: TObject);   // далее
begin
    if (n<15) then
          begin
  n:= n+1;
  Picture1.ImageIndex:= n;
    if  (Picture1.ImageIndex= 15) then  Form2.Image3.imageindex:=14
  else Form2.Image2.imageindex:=15;
   if ((n=15) and (w=0)) then  begin Image4.show ;label4.Show; end
  else begin Image4.hide;label4.hide; end;
          end;
end;

procedure TForm2.Image4Click(Sender: TObject);  // играть
begin
    Form3.Show;
   Form2.Hide;
end;

procedure TForm2.Image5Click(Sender: TObject);//пропустить
begin
        Form3.Show;
        Form2.Hide;
end;

procedure TForm2.Label3Click(Sender: TObject);
begin

end;

procedure TForm2.Label4Click(Sender: TObject);
begin

end;





end.

