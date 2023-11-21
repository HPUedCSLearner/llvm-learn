



int while_sum(int n) {
	int sum = 0;
	while(n--) {
		sum += n;
	}
	return sum;
}


int for_sum(int n) {
	int sum = 0;
	for(int i = 0; i < n; ++i) {
		sum += i;
	}
	return sum;
}