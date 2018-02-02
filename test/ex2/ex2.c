int main()
{
	int a,b,c,d;
	int  __attribute__((annotate("sensitive"))) key; // sensitive
	
	if(key)
	{
		a = 1;
	}
	else
	{
		b = 2;
	}
	
	if(a)
	{
		c = 1;
	}
	else
	{
		d = 2;
	}	
}
