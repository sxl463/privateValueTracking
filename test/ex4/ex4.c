

int main()
{
	int a,b,c,d;
	int  __attribute__((annotate("sensitive"))) key1; // sensitive
	
	if(a)
	{
		a = 2;
		b = 3;
		
	}
	else
	{
		c = 4;
		d = 5;
	}
	
	if(key1)
	{
		a = 2;
	}
	else
	{
		b = 3;
	}
	
	if(a)
	{
		b = 4;
	}
	else
	{
		c = 5;
	}

}
