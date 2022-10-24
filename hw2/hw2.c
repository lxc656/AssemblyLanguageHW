#include<stdio.h>

int main()
{
    for(int i=9; i>=1; i--) 
    {
        for(int j=1; j<=i; j++)
        {
            printf("%d x %d = %d", i, j, i*j);
            if(j == i)
            {
                printf("\n");
            }
            else
            {
                printf(" ");
            }
        }
    }
    return 0;
}