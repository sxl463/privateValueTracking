int main()
{
	int a,b,c,d;
	int  __attribute__((annotate("sensitive"))) key; // sensitive
	
	a = key;
	
	if(a)
	{
		c = 1;
	}
	else
	{
		d = 2;
	}
}
