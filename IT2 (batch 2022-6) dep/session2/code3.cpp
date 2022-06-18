main ()
{
	int mark = 90;
	cin>>mark;
	if (mark>=80) cout<<"A";
	if ((mark>=75)&&(mark<80)) cout<<"B";
	if ((mark>=60)&&(mark<75)) cout<<"C";
	if ((mark>=50)&&(mark<60)) cout<<"D";
	if (mark<50) cout<<"F";
}