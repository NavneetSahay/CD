%{
#include<stdio.h>
int sf=0,pf=0;
%}


%%
"scanf"	{ sf++; fprintf(yyout,"readf");}   
"printf" { pf++; fprintf(yyout,"writef");}  

%%

int main()
{
	yyin=fopen("open.c","r");                            // input file open.c
	yyout=fopen("new.c","w");                           // output file new.c 
	yylex();
	printf("Number of scanfs=%d\nNumber of Printf's=%d\n",sf,pf);

return 0;

}
