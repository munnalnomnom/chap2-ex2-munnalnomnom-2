#include <stdio.h>
#include <math.h>
int main()
{
    int hours,minutes;
    printf("Input hours: ");
    scanf("%d",&hours);
    printf("Input minutes: ");
    scanf("%d",&minutes);
    minutes = minutes + hours*60;
    printf("Total: %d minutes.",minutes);
    return 0;
}
