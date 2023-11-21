

// 计算整数X和整数Y的最大公约数

int gsd(int x,int y)
{
	int q=x;
	int r=y;
	while(q!=r)
	{
		if (q>r)
			q=q-r;
		else 
			r=r-q;
	}
	return q;
}