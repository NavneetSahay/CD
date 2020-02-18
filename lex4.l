%{ 
%}
start \/\* 
/*Ending character sequence for multiline comment*/ 
end \*\/ 

/*Rule Section*/ 
%% 

/*Regular expression for single line comment*/ 
\/\/(.*) ; 
/*Regular expression for multi line comment*/ 
{start}.*{end} ; 

%% 
int main(int k,char **argcv) 
{ 
yyin=fopen(argcv[1],"r"); 
yyout=fopen("out.c","w"); 
yylex(); 
return 0; 
} 

