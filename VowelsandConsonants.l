%{
#include<stdio.h>
int v=0;
int c=0;
%}
%%
[aeiouAEIOU] {v++;}
[^ aeiouAEIOU] {c++;}
%%
int yywrap(){
}
int main(){
    printf("Enter the string:");
	yylex();
	printf("No of Vowels are=%d\n",v);
	printf("No of Consonants are=%d\n",c);
	return 0;
}
