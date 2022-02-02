
package fuentes;

import java_cup.runtime.Symbol;

//Scanner para generar C3D

%%
%{
    //Código de usuario
%}

%cup
%class scanner
%public
%line
%char
%column
%full
%unicode

SPACE   = [\ \r\t\f\t]
ENTER   = [\ \n]

%%

"." {return new Symbol(sym.PUNTO,yyline,yychar, yytext());} 
"0" {return new Symbol(sym.CERO,yyline,yychar, yytext());} 
"1" {return new Symbol(sym.UNO,yyline,yychar, yytext());} 

<YYINITIAL> {SPACE}     { /*Espacios en blanco, ignorados*/ }
<YYINITIAL> {ENTER}     { /*Saltos de linea, ignorados*/}

<YYINITIAL> . {
        String errLex = "Error léxico, caracter irreconocible: '"+yytext()+"' en la línea: "+(yyline+1)+" y columna: "+yycolumn;
        System.err.println(errLex);
}
