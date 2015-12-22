#include <stdio.h>
extern int exists();

int main(){ 
	char *str = "ABCDEF";
	char ch = 'a';
	int result;
	result = exists(str, ch);
	printf("< %x > \n", result);
}
