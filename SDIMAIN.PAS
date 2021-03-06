unit SDIMAIN;

interface

uses Windows, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList, StdActns,
  ActnList, ToolWin, DBXpress, DB, SqlExpr, FMTBcd;

type
  TSDIAppForm = class(TForm)
    StatusBar: TStatusBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileExitItem: TMenuItem;
    Edit1: TMenuItem;
    DaftarKasus: TMenuItem;
    InputKasus: TMenuItem;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
    Con: TSQLConnection;
    DS: TSQLDataSet;
    procedure FileExit1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DaftarKasusExecute(Sender: TObject);
    procedure InputKasusExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SDIAppForm: TSDIAppForm;

implementation

uses about;

{$R *.dfm}

procedure TSDIAppForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TSDIAppForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TSDIAppForm.FormCreate(Sender: TObject);
begin
//Koneksi MSSQL di sini
Con.Create(nil);
Con.DriverName     := 'MSSQL';
Con.ConnectionName := 'MSSQLConnection';
Con.GetDriverFunc  := 'getSQLDriverMSSQL';
Con.LibraryName    := 'dbexpmss.dll';
Con.VendorLib      := 'oledb';
Con.LoginPrompt    := False;
Con.Params.Values['SchemaOverride']       := 'sa.dbo';
Con.Params.Values['DriverName']           := 'MSSQL';
Con.Params.Values['BlobSize']             := '-1';
Con.Params.Values['ErrorResourceFile']    := '';
Con.Params.Values['LocaleCode']           := '0000';
Con.Params.Values['MSSQL TransIsolation'] := 'ReadCommited';
Con.Params.Values['OS Authentication']    := 'False';
Con.Params.Values['Prepare SQL']          := 'False';
Con.Params.Values['HostName']             := '192.168.0.62:1443';
Con.Params.Values['DataBase']             := 'dbREKAPKASUS';
Con.Params.Values['User_Name']            := 'ta';
Con.Params.Values['Password']             := 'it@3serangkai';

end;

procedure TSDIAppForm.DaftarKasusExecute(Sender: TObject);
begin
//Create Form Daftar Kasus di sini
end;

procedure TSDIAppForm.InputKasusExecute(Sender: TObject);
begin
//Create Form Input Kasus di sini
end;

end.
