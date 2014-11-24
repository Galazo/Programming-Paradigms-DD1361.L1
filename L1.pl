% FIBONACCI-TALEN 
% Fibonacci med svansrekursion.
fib(N, F) :- fib(N, 0, 1, F).
fib(N, A, B, F) :- N > 0, !, N1 is N - 1, Summa is A+B, fib(N1, B, Summa, F).
fib(0,A,_,A).
 
 
 
% RÖVARSPRÅKET: rovarsprak(T, [104, 111, 104, 101, 106, 111, 106])
rovarsprak([Head|Tail],[Head|Rest]):-
    memberchk(Head,"aeiouy"),
        !,
        rovarsprak(Tail,Rest).
                
rovarsprak([Head|Tail],[Head,111,Head|Rest]):-!, 
        rovarsprak(Tail,Rest).
rovarsprak([],[]).                                      
        
        
% MEDELLANGD: medellangd("No, I am definitely not a piedasdsadas qwe qweqwe wqeq we qwe qwe qwe wqe q we qwe qwe qw erqwrw qr qwrwq ew qeqweqw eqw eewqeqw eqw eqw rewfg        23fwfw!",X).
%:-:-time(medellangd("No, I am definitely not a pie!",X)).
% 132 inferences, 0.000 CPU in 0.000 seconds (86% CPU, 4258065 Lips)
% 133 inferences, 0.000 CPU in 0.000 seconds (82% CPU, 4030303 Lips)
medellangd(Text, AvgLen) :-!,
        sumWord_length(Text,L,A),
        AvgLen is (L/A).    
                       
sumWord_length([H|[]],1,1) :- char_type(H, alpha),!.    %cuando es un character 1 1
sumWord_length([H,J|T],L,A):-                           %cuando termina una palabra
        char_type(H, alpha),\+char_type(J,alpha),!,
        sumWord_length(T,L0,A0), 
        L is L0+1, A is A0+1. 
                        
sumWord_length([H|T],L,A):-                             %cuando es letra
        char_type(H, alpha),!,
        sumWord_length(T,L1,A1), 
        L is L1+1, A is A1+0.
                                                             
sumWord_length([_|T],L,A):- !, sumWord_length(T,L,A).   %reinicia la recursion
sumWord_length([],0,0).                                 %cuando esta vacia 0 0
 
 
 
% LISTSKYFFLING: skyffla([1, 2, 3, 4, 5, 6, 7, 8, 9],X).
 
skyffla([Head|Tail],ListaSkyfflad):-!,
        varvSkyffla([Head|Tail],Varv1),                 %  [1, 3, 5, 7, 9]
        varvSkyffla(Tail,Varv2),                        %  [2, 4, 6, 8]
        skyffla(Varv2,ListaSkyfflad0),                  % anropar skyffla rekursiv [2, 4, 6, 8]
        append(Varv1,ListaSkyfflad0,ListaSkyfflad).     % [1, 3, 5, 7, 9]++[2, 4, 6, 8]
skyffla([],[]):-!.                         
 
varvSkyffla([Head2,_|Tail2],[Head2|R]):-!,
        varvSkyffla(Tail2,R).
varvSkyffla([],[]):-!.  
varvSkyffla([Head1|[]],[Head1]):-!.   
    
 
 
 
