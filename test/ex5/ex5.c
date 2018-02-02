int main()
{
	
	int a,b,c,d;
	int  __attribute__((annotate("sensitive"))) key; // sensitive
	
	while(a)
	{
		b = 3;
		c = key;
		a--;
		
	}
	
	while(key)
	{
		d = 3;
		key--;
	}
	
	if(c)
	{
		b = 3;
	}
	else
	{
	  a = 4;
	}
	
}
