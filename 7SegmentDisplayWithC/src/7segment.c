#include <at89c51RC2.h>

#define Segmentler P2
#define #OrtakUclar P3        //P3’un yuksek degerlikli 4 biti kullanilacak.
#define Say P1_0

main(){
//Ortak katot 7 Segment karsiliklari
//En yüksek degerlikli bit a segmentine gidiyor
unsigned char tablo[]={   0xFC, 0x60, 0xDA, 0xF2,        //0, 1, 2, 3
                                        0x66, 0xB6, 0xBE, 0xE0,        //4, 5, 6, 7
                                        0xFE, 0xF6, 0xEE, 0xFE,        //8, 9, A, B
                                        0x9C, 0xFC, 0x9E, 0x8E         //C, D, E, F
};
    int sayi=0;                 //Sayma değerlerini tutmak icin
    OrtakUclar=0x10;            //Sagdaki Display aktif (Lojik-1 aktif)
    Segmentler=tablo[sayi];     //Baslangicta 0 yanmasi icin
    while(1)
    {
        while(!Say);
        while(Say);
        if(sayi<9)
            sayi++;
        else
            sayi1=0;
        Segmentler=tablo[sayi];
    }
}
