int main()
{
	int a,b;
	int  __attribute__((annotate("sensitive"))) key; // sensitive
	
	if(key)
	{
		a = 1;
	}
	else
	{
		b = 2;
	}
}
