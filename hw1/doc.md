call the function defined in `assCode1.s` through C code in `gauss.c`:
```C
#include <stdio.h> 
#include <stdlib.h> 
extern unsigned long gauss(unsigned v); 
extern unsigned long addbyloop(unsigned v); 
int main(int argc, char **argv){ 
	unsigned v=100; 
	if(argc>1) v=abs(atoi(argv[1])); 
	printf("%ld, %ld\n", gauss(v), addbyloop(v)); 
}
```
```shell
> nasm -felf64 assCode2.s && cc -O3 -march=native -s -o gauss gauss.c gauss.o
> ./gauss   
5050, 5050 
```