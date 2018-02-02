void test()
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


int main()
{
	int a,b,c,d;
	int  __attribute__((annotate("sensitive"))) key2; // sensitive
	
	test();

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
	
	if(key2)
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
