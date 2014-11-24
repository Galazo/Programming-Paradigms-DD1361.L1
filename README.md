Programming-Paradigms-DD1361-L1
===============================

Labb L1: Uppvärmning i Prolog Problem-ID på Kattis: kth:progp:warmup

I denna labb återvänder vi till uppgifterna från labb F1. Du ska nu lösa dessa även i Prolog. Följande är ett kodskelett som man kan utgå ifrån, det innehåller triviala kodstubbar (som såklart inte gör rätt) för samtliga deluppgifter i labben.
Nedan följer specifikationer för de prolog-predikat du ska skriva. Om du har glömt bort vad som ska beräknas i de olika deluppgifterna, se labb F1.

Vanlig fallgrop
I samtliga uppgifter ska predikaten ni skriver bara generera varje lösning en gång. Med andra ord, ska t.ex. “rovarsprak[100], X.” genererera X = [100, 111, 100] som lösning exakt en gång, och“skyffla([1,2], X).”genereraX = [1,2]exaktengång.Omerlösninggenererarsamma svar flera gånger så kommer lösningen inte bli godkänd av Kattis.

1 Fibonacci-talen
Skriv ett predikat fib(+N, ?F) som är sant om och endast om F är det N’te Fibonacci-talet. Målet fib(30, F)skaalltsåhaexaktenlösning,nämligenattFärdettrettiondeFibonacci-talet.
Att diskutera vid redovisning. Jämför hur stora Fibonacci-tal du kan beräkna med din Prolog-lösning jämfört med din Haskell-lösning.

2 Rövarspråket
Skrivettpredikatrovarsprak(?Text, ?RovarText)somärsantomochendastomRovarText är Text översatt till rövarspråket.
De två strängarna Text och RovarText kommer att representeras som listor av tecken-koder. Sträng-
en “hej” representeras t.ex. av listan [104,101,106] (ASCII-koderna för ‘h’, ‘e’, och ‘j’). Det finns många olika predikat för att arbeta med sådana listor (manualen är din vän). Ett praktiskt predikat att kän-
na till är writef(+Atom) som skriver ut listan formaterad som en sträng (writef([104,101,106]). skriver alltså ut “hej”).

Predikatetrovarsprakskagåattanvända“åtbådahållen”,d.v.s.rovarsprak(T, [104, 111, 104, 101, 106, 111, 106])(vilkenärsträngensomrepresenterasavandraargumentet?)uni- fieraTmed[104, 101, 106].

3 Medellängd
Skriv ett predikat medellangd(+Text, ?AvgLen) som är sant om och endast om AvgLen är medellängden av texten Text. Texten Text representeras precis som i förra uppgiften av en lista med tecken-koder.
Tips. Det inbyggda predikatet char_code kan komma till användning, kolla upp det!


fib(N, F) :- F = N.
rovarsprak(Text, RovarText) :- RovarText = Text.
medellangd(Text, AvgLen) :- AvgLen = 1.0.
skyffla(Lista, Skyfflad) :- Skyfflad = Lista.
progp 2014: Labb L1: Uppvärmning i Prolog 15


4 Listskyffling
Skrivettpredikatskyffla(+Lista, ?Skyfflad)somärsantomochendastomSkyffladär Lista efter omskyffling.
Att diskutera vid redovisning. Kan man använda ditt predikat för att “avskyffla” en lista (dvs gå tillbaka till ursprunget från en omskyfflad lista)?
Tips. Det inbyggda predikatet append kan komma till användning.
