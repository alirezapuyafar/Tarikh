unit Unit1;

// --------------   Tarikh Component ( Design By: Alireza Pooyafar )   ------------- //
// --------------             alirezapuyafar@gmail.com                 ------------- //
// --------------               +98 - 09144075815                      ------------- //

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RegTarikh, StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Button1: TButton;
    J1: TEdit;
    J2: TEdit;
    J3: TEdit;
    J4: TEdit;
    J8: TEdit;
    J9: TEdit;
    J14: TEdit;
    J16: TEdit;
    E1: TEdit;
    E2: TEdit;
    E3: TEdit;
    E4: TEdit;
    E8: TEdit;
    E9: TEdit;
    J13: TEdit;
    E13: TEdit;
    E14: TEdit;
    J15: TEdit;
    Tarikh1: TTarikh;
    LinkLabel1: TLinkLabel;
    LinkLabel2: TLinkLabel;
    LinkLabel3: TLinkLabel;
    LinkLabel4: TLinkLabel;
    LinkLabel5: TLinkLabel;
    LinkLabel6: TLinkLabel;
    LinkLabel7: TLinkLabel;
    LinkLabel8: TLinkLabel;
    LinkLabel9: TLinkLabel;
    LinkLabel10: TLinkLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
J1.Text := Tarikh1.IntMiladiToShamsi(E1.Text);
J2.Text := Tarikh1.StrMiladiToShamsi(E2.Text);
J3.Text := Tarikh1.IntShamsiToMiladi(E3.Text);
J4.Text := Tarikh1.StrShamsiToMiladi(E4.Text);

J8.Text := Tarikh1.StrDayOfShamsi(E8.Text);
J9.Text := Tarikh1.StrMounthOfShamsi(E9.Text);

J13.Text := Tarikh1.StrDayOfMiladi(E13.Text);
J14.Text := Tarikh1.StrMounthOfMiladi(E14.Text);

J15.Text := Tarikh1.GetIntTodayShamsi;
J16.Text := Tarikh1.GetStrTodayShamsi;

Edit1.Text := IntToStr(Tarikh1.BetweenDates(Edit3.Text, Edit5.Text, TMiladi));
Edit2.Text := IntToStr(Tarikh1.BetweenDates(Edit4.Text, Edit6.Text, TShamsi));

end;

end.
