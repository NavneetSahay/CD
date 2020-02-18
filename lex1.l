%{
#include<stdio.h>
int vowels=0;
int consts=0;
%}

%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {consts++;}
%%

int main()
{
printf("Enter the string");
yylex();
printf("No. of vowels = %d \n",vowels);
printf("No. of consts = %d \n",consts);
return 0;
}
