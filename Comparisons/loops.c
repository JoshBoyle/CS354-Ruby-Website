#include <stdio.h>

int main() {
  int i;

  for (i = 1; i < 11; ++i)          //for loop
  {
    printf("%d ", i);
  }

  int j = 5;                        //while loop
  while(j >= 0) {
    printf("%d ", j);
    j--;
  }

int num=1;	
	do	{                            //do-while loop 
		printf("%d\n",2*num);
		num++;		
	}
    while(num<=10);
	

  return 0;
}