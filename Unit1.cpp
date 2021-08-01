//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
int i=0;
while (Form1->table1->FieldCount > i){
	   i++;
	   cb1->Items->Add(Form1->table1->Fields->Fields[i-1]->FieldName);
}

ADOConnection1->GetTableNames(ListBox1->Items, false);

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
if (Edit1->Text == "") {
   MessageDlg("Вы не ввели значения для поиска!",mtError,mbAbortRetryIgnore,0);
}
if (Edit1->Text != "") {
   query1->Close();
   query1->SQL->Clear();
	query1->SQL->Text= "select * from " + table1->TableName + " where " + cb1->Text + " = :Field";
	query1->Parameters->ParamByName("Field")->Value=Edit1->Text;
	query1->Open();
	table1->TableName;
}
}
//---------------------------------------------------------------------------

