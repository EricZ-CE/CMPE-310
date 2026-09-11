#include <stdio.h>
extern unsigned char ram[];
extern void ff_ram(void);

int main()
{ff_ram();
    printf("RAM contents from 50H to 58H:\n");

    for (int a = 0x50; a <= 0x58; a++){
        printf("%02X ", ram[a]);
    }
    printf("\n");

    return 0;
}