#define max 5
int sum (int a , int b )
{
	return(a+b);
}
main ()
{
	int a[max];
	for (int i =0;i<max;i++)
		cin>>a[i];
	for (int i =1;i<max;i++)
		cout<<sum(a[i-1],a[i]);
}