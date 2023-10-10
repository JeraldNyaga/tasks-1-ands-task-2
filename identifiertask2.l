%{
//declarations are usually written here
%}
 

%%

[0-9]+ {printf("%s invalid identifier\n", yytext);}

"if" {printf("%s invalid identifier\n", yytext);}
"while" {printf("%s invalid identifier\n", yytext);}
"do" {printf("%s invalid identifier\n", yytext);}

[A-Za-z][A-Za-z0-9_]* {printf("%s valid identifier\n", yytext);}




\n    {return 0;}
%%
 

int yywrap(){}
int main(){
 
 
yylex();
 
return 0;
}