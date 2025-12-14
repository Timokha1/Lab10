
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

class Telement
{
protected:
    Telement *left, *right;
public:
    Telement(Telement* l, Telement* r): left(l), right(r) {}
    virtual ~Telement()
    {
        delete left;
        delete right;
    }
    virtual float rezult() = 0;
};



class Number: public Telement
{
    float f;
public:
    Number(float F):Telement(NULL,NULL)
	{
        f = F;
    }
	float rezult(void)
    {return f;}
};



class Plus: public Telement
{
public:
    Plus(Telement*l, Telement*r):Telement(l, r) {};
    float rezult(void)
    {
        return left->rezult() + right->rezult();
	}
};


struct Mult:public Telement
{
    Mult(Telement*l, Telement*r):Telement(l, r) {};
    float rezult(void)
    {
        return left->rezult()*right->rezult();
    }

};

Telement*form(AnsiString s, float x_value, float y_value)
{
    Telement*h;
    int p;
    int l = s.Length();
    AnsiString s1, s2;

    if ((p=s.Pos("+"))>1)
    {
        s1=s.SubString(1, p-1);
		s2= s.SubString(p + 1, l-p);
        h= new Plus(form(s1, x_value, y_value), form(s2, x_value, y_value));
	}
	else if ((p=s.Pos('*'))>1)
	{
		s1 = s.SubString(1, p - 1);
		s2 = s.SubString (p + 1, l - p);
        h = new Mult(form(s1, x_value, y_value), form(s2, x_value, y_value));
	}
	else if (s =="x")
        h = new Number(x_value);
	else if (s =="y")
		h = new Number(y_value);
	else
	{
        h = new Number(StrToFloat(s));
    }
    return h;
}
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)

{

    int dec = StrToInt(ComboBox1->Text);

    float x_val, y_val;

    Telement *temp;



    temp = form(Edit1->Text, 0, 0);

x_val = temp->rezult();

    Edit3->Text = FloatToStrF(x_val, ffFixed, 25, dec);

    delete temp;



    temp = form(Edit9->Text, 0, 0);

    y_val = temp->rezult();

    Edit8->Text = FloatToStrF(y_val, ffFixed, 25, dec);

    delete temp;



    temp = form(Edit2->Text, x_val, y_val);

    Edit4->Text = FloatToStrF(temp->rezult(), ffFixed, 25, dec);

    delete temp;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::ComboBox1Change(TObject *Sender)
{
	Button1Click(Button1);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
	exit(1);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
	Telement* a = new Number(3);
    Telement* b = new Number(4);
	Telement* c = new Number(2);

    Telement* m = new Mult(a, b);
    Telement* p = new Plus(m, c);

    Edit5->Text = FloatToStrF(a->rezult(), ffFixed, 25, 8);
	Edit6->Text = FloatToStrF(m->rezult(), ffFixed, 25, 8);
	Edit7->Text = FloatToStrF(p->rezult(), ffFixed, 25, 8);

	delete p;
}
//---------------------------------------------------------------------------
