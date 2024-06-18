unit List_sad1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ExtCtrls,
  StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image16_1: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image2: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image3: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Sad: TImageList;
    Urovni: TImageList;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;

    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image16_1Click(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);

  private

  public

  end;

var
  Form3: TForm3;
      mesto,p,pol,opr_vid,vid_pered_1, vid_pered_2:integer;
      vhod_2,vhod_1:integer;

implementation
       uses list1,list_semena1, list_virach1, List_progress,List_virash2;
{$R *.lfm}

{ TForm3 }

procedure TForm3.Image13Click(Sender: TObject);   // открыть прогресс
begin
      form9.Image2.ImageIndex:=form3.Image2.ImageIndex ;
       form9.Image1.ImageIndex:=form3.Image13.ImageIndex ;
       Form9.Show;
end;

procedure TForm3.Image16_1Click(Sender: TObject);   // вернуться
begin

        Form1.Show;
        Form3.Hide;
end;

procedure TForm3.Image28Click(Sender: TObject);
begin

        // посаженое семя 1 и переход на выращ
     mesto:=2; // определяет место цветка при выходе

     opr_vid:= vid_pered_2;
       case opr_vid of
    1:  form10.label6.Caption:='Космея';
    2:form10.label6.Caption:='Колокольчик';
     3:form10.label6.Caption:='Василек';
     4:form10.label6.Caption:='Лилия';
       end;

      case opr_vid of
    1,2:begin form10.Image2.Show;

             if  vhod_2=0 // для входа и начала растения- картинка
               then begin
                  form10.Image8.Enabled:= true;
                 form10.label2.Enabled:= true;
                 form10.Image8.ImageIndex:=4;
                 form10.Image8.ImageIndex:=4; vhod_2:=1; end; end;
    3,4: begin form10.Image3.Show;


     if  vhod_2=0 // для входа и начала растения- картинка
               then begin
                 form10.Image8.Enabled:= true;
                 form10.label2.Enabled:= true;
                 form10.Image8.ImageIndex:=4;
                 vhod_2:=1; end; end;
      end;

        Form10.Image1.ImageIndex:=form3.Image16.ImageIndex;
        Form10.show;
        Form3.Hide;

end;
 
procedure TForm3.Image14Click(Sender: TObject);
begin
    // посаженое семя 1 и переход на выращ
     mesto:=1; // определяет место цветка при выходе

     opr_vid:= vid_pered_1;
       case opr_vid of
    1:  form8.label6.Caption:='Космея';
    2:form8.label6.Caption:='Колокольчик';
     3:form8.label6.Caption:='Василек';
     4:form8.label6.Caption:='Лилия';
       end;

      case opr_vid of
    1,2:begin form8.Image2.Show;

             if  vhod_1=0 // для входа и начала растения- картинка
               then begin
                  form8.Image8.Enabled:= true;
                 form8.label2.Enabled:= true;
                 form8.Image8.ImageIndex:=4;
                 form8.Image8.ImageIndex:=4; vhod_1:=1; end; end;
    3,4: begin form8.Image3.Show;


     if  vhod_1=0 // для входа и начала растения- картинка
               then begin
                 form8.Image8.Enabled:= true;
                 form8.label2.Enabled:= true;
                 form8.Image8.ImageIndex:=4;
                 vhod_1:=1; end; end;
      end;

        Form8.Image1.ImageIndex:=form3.Image1.ImageIndex;
        Form8.show;
        Form3.Hide;

end;

procedure TForm3.Image3Click(Sender: TObject);
begin
   mesto:=8;   // номер места для посадки
        Form4.show;
end;

procedure TForm3.Image4Click(Sender: TObject);
begin
   mesto:=10;   // номер места для посадки
        Form4.show;
end;

procedure TForm3.Image5Click(Sender: TObject);
begin
   mesto:=11;   // номер места для посадки
        Form4.show;
end;

procedure TForm3.Image6Click(Sender: TObject);
begin
   mesto:=7;   // номер места для посадки
        Form4.show;
end;

procedure TForm3.Image7Click(Sender: TObject);
begin
   mesto:=6;   // номер места для посадки
        Form4.show;
end;

procedure TForm3.Image8Click(Sender: TObject);
begin
   mesto:=5;   // номер места для посадки
        Form4.show;
end;

procedure TForm3.Image15Click(Sender: TObject);
begin
   mesto:=9;   // номер места для посадки
        Form4.show;
end;

procedure TForm3.Image10Click(Sender: TObject);  //посадка семя 2
begin
  mesto:=2;   // номер места для посадки
        Form4.show;
end;

procedure TForm3.Image11Click(Sender: TObject);  //посадка семя 3
begin
  mesto:=3;   // номер места для посадки
        Form4.show;
end;

procedure TForm3.Image12Click(Sender: TObject);
begin
      mesto:=4;   // номер места для посадки
        Form4.show;
end;


procedure TForm3.Image9Click(Sender: TObject);  //посадка семя 1
begin                                    //на выбор семечка
        mesto:=1;   // номер места для посадки
        Form4.show;
end;


end.

