int add(int a, int b)
{
    return a + b;
}

int sub(int a, int b)
{
    if (a > b) {
        return a;
    } else {
        return b;
    }
}

int main()
{
    int a = 996;
    int b = 11116;

    add(a, b);
    sub(a, b);

    return 0;
}