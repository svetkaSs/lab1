#include "stdint.h"
#include "stdio.h"

int main(){
uint8_t m=107;
uint8_t arr[10]={ 100, 200, 255, 138, 1, 10, 136, 250, 240, 136};
uint16_t num=0;
uint8_t arr2[10];

for (uint8_t i=0; i<10; i++){
	arr2[i]=arr[i] | m;

	if (arr2[i] <128){
	num++;
	}
}


printf("%x", num);
printf("\n");

return 0;
}

