unit dialog1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm11 }

  TForm11 = class(TForm)
    Image1: TImage;
    Image20: TImage;
    Image3: TImage;
    Image4: TImage;
    Dialog_1: TImageList;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private

  public

  end;

var
  Form11: TForm11;
       deistv:integer;
implementation
        uses list_virach1,list_sad1,list_virash2,list1;
{$R *.lfm}

{ TForm11 }

procedure TForm11.Image4Click(Sender: TObject);
begin
  case deistv of
  1:  begin       //  1 определяет номер действия  (вкдючить лампу)
       case mesto of    // определяет для какого места будет работатать кнопка
            1:begin
                 form8.Image10.visible:=true;
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
                                  if (shkal_rast_1<>20) then begin
                                    Form8.image1.imageindex:= Form8.image1.imageindex+1;end;
                                    Form8.timer1.Enabled:=True;
                                    timer1_rab:=0;
                                     end;
                                     end;
                                    Form8.show;
                                    Form11.hide;
                                    form11.label4.visible:=false;
                                    form11.label6.visible:=false;
                                     form11.label7.visible:=false;
        end;
            2:begin          // для второго места в саду
                   form10.Image10.visible:=true;
                form10.timer2.interval:=700;
                form10.Image7.ImageIndex:=3;
                form10.Image8.ImageIndex:=5;
                form10.Image9.ImageIndex:=8;
                      form10.label2.Enabled:=False;
                      form10.label3.Enabled:=False;
                      form10.label4.Enabled:=False;
                           form10.Image8.Enabled:=False;
                           form10.Image7.Enabled:=False;
                           form10.Image9.Enabled:=False;

                 begin if (rab_2=0)
                          then begin  Form10.timer2.Enabled:=True;
                                    timer2_rab:=0; rab_2:=1; end
                          else begin
                                  if (shkal_rast_2<>20) then begin
                                    Form10.image1.imageindex:= Form10.image1.imageindex+1;end;
                                    Form10.timer2.Enabled:=True;
                                    timer2_rab:=0;
                                     end;
                                     end;
                                    Form10.show;
                                    Form11.hide;
                                    form11.label4.visible:=false;
                                    form11.label6.visible:=false;
                                     form11.label7.visible:=false;
        end;
                {3:}  //3 место
       end; end;
     2:  begin  //  2 определяет номер действия  (высадить растение)
          case mesto of         // определяет для какого места будет работатать кнопка
            1:begin
                 case opr_vid of
                   1,2,9,10:form3.image2.ImageIndex:= form3.image2.ImageIndex+1;
                   3,4,5,11,12:form3.image2.ImageIndex:= form3.image2.ImageIndex+2;
                   6,7,8,13,14: form3.image2.ImageIndex:= form3.image2.ImageIndex+3;
                   15,16:form3.image2.ImageIndex:= form3.image2.ImageIndex+4;
                 end;
                  form8.Image10.visible:=false;
               shkal_rast_1:=0;
               rab_1:=0;
               raz1:=0;
               opr_vid:=0;
               vhod_1:=0;
               form8.timer1.interval:=1000;
               form8.image2.imageindex:= shkal_rast_1;
               form8.Label5.Visible:=false;
               form3.image9.show;
               form3.image1.Hide;
               form3.image14.Hide;
               form3.Image14.ImageIndex:=1;
               form3.label2.Hide;

              form11.hide;
              form3.show;
              end;

             2:   begin  // для второго места в саду
                 case opr_vid of
                   1,2,9,10:form3.image2.ImageIndex:= form3.image2.ImageIndex+1;
                   3,4,5,11,12:form3.image2.ImageIndex:= form3.image2.ImageIndex+2;
                   6,7,8,13,14: form3.image2.ImageIndex:= form3.image2.ImageIndex+3;
                   15,16:form3.image2.ImageIndex:= form3.image2.ImageIndex+4;
                 end;
                   form10.Image10.visible:=false;
               shkal_rast_2:=0;
               rab_2:=0;
               raz2:=0;
               opr_vid:=0;
               vhod_2:=0;
                form10.timer2.interval:=1000;
               form10.image2.imageindex:= shkal_rast_2;
               form10.Label5.Visible:=false;
               form3.image10.show;
               form3.image16.Hide;
               form3.image28.Hide;
               form3.Image28.ImageIndex:=1;
               form3.label3.Hide;

              form11.hide;
              form3.show;
              end;
      end;end;
      3:begin form11.hide; form1.close; end; //  3 определяет номер действия  (спрос выхода)
  end;
  if   form3.image2.imageindex=5
              then begin


              end;
end;

procedure TForm11.Image3Click(Sender: TObject);
begin
   case deistv of
  1:   begin            // 1 действия  (вкдючить лампу)
      case mesto of
    1: begin form8.Image7.ImageIndex:=3;  // 1 действия для 1 места в саду (нет)
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
                     if (shkal_rast_1<>20) then begin  Form8.image1.imageindex:= Form8.image1.imageindex+1;end;
                      Form8.timer1.Enabled:=True;
                      timer1_rab:=0;
                       end;
                end;
        Form8.show;
           Form11.hide;
            form11.label4.visible:=false;
             form11.label6.visible:=false;
              form11.label7.visible:=false;

    end;
        2:     // 1 действия для 2 места в саду
           begin form10.Image7.ImageIndex:=3;  // 1 действия для 1 места в саду (нет)
      form10.Image8.ImageIndex:=5;
      form10.Image9.ImageIndex:=8;
        form10.label2.Enabled:=False;
        form10.label3.Enabled:=False;
        form10.label4.Enabled:=False;
      form10.Image8.Enabled:=False;
      form10.Image7.Enabled:=False;
      form10.Image9.Enabled:=False;

    begin if (rab_2=0)
                then begin  Form10.timer2.Enabled:=True;
                      timer2_rab:=0; rab_2:=1; end
                else begin
                     if (shkal_rast_2<>20) then begin  Form10.image1.imageindex:= Form10.image1.imageindex+1;end;
                      Form10.timer2.Enabled:=True;
                      timer2_rab:=0;
                       end;
                end;
        Form10.show;
           Form11.hide;
            form11.label4.visible:=false;
             form11.label6.visible:=false;
             form11.label7.visible:=false;

    end;
      end;end;

   2: form11.Hide;
   3: form11.Hide;
   end;
    end;

procedure TForm11.Image1Click(Sender: TObject);
begin

end;

end.

