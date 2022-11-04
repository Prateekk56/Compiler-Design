/*This program calculate the number of lines words and characters*/
%{
int nlines,nwords,nchars;
%}
%%
{
nchars++;++nlines;
}
[^ \n\t]+ {nwords++, nchars=nchars+yyleng;}
. {nchars++;}
"\n" return 0;
%%
int yywrap(void)
{
return 1;
}
int main(int argc, char*argv[])
{
yyin=fopen(argv[1],"r");
yylex();
printf("Lines = %d\nChars=%d\nWords=%d",nlines,nchars,nwords);
return 0;
}
