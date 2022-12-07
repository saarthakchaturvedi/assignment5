/*
flattened C code:

static long lLineCount = 0;
static long lWordCount = 0;
static long lCharCount = 0;
static int iChar;
static int iInWord = FALSE;

...

iChar = getChar()
loop1:
   if(iChar == EOF) goto end loop1;
   lCharCount++;
   if(!isspace(iChar)) goto else1;
      if(!iInWord)goto endif2;
         lWordCount++;
         iInWord = FALSE;
      endif2;
      goto endif1
   else1:
      if(iInWord) goto endif3;
         lLineCount++;
      endif3;
   endif1:
endloop1:
   if(!iInWord) goto endif4;
OB      lWordCount++;
   endif4:
printf("%7ld %7ld %7ld\n", lLineCount, lWordCount, lCharCount);
return 0;

*/

        .section .rodata

printfFormatStr:
        .string "%7ld %7ld %7ld\n"

        .section .data

        .section .bss
lLineCount:
        .skip 8
lWordCount:
        .skip 8
lCharCount:
        .skip 8
iChar:
        .skip 4
iInWord:
        .skip 4
      
      

main:
        
