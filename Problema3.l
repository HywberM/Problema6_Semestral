%option noyywrap
%option main


%{
#include <stdio.h>

%}

%%

11+ printf("Aceptado\n"); exit(0);
1 printf("rechazado\n"); exit(0);
(^0*) printf("rechazado\n"); exit(0);
(1|0*) printf("rechazado\n"); exit(0);
(011*) printf("rechazado\n"); exit(0);
(11*)0* printf("rechazado\n"); exit(0);
11*0*11* printf("Aceptado\n"); exit(0);

%%