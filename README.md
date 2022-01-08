# corvinusphd
LaTeX template a Budapesti Corvinus Egyetemen készülő magyar nyelvű Ph.D. dolgozatokhoz.
A template file megfelel a doktori iskola formális elvárásainak.

* A stilus file: `corvinusphd.cls` 
* A template file: `disszertacio.tex`
* Fordítás: 
```
latexmk disszertacio.tex
```

Helyezzük a `corvinusphd.cls` és a `disszertacio.tex` file-okat a dolgozatunk alkönyvtárába.
Szükséges még, hogy az ábrák ennek az alkönyvtárnak az `images/` alkönyvtárában legyenek.
Ajánlom, hogy a template file-t futtassuk először. A `MiKTeX` vagy `texlive` standard disztribúciókkal
a `disszertacio.tex` template file néhány warning üzenettel, de hiba nélkül fordít.

Ha ideáig eljutottunk, akkor a `disszertacio.tex` file 3-10 soraiban definiált parancsokat kell értelemszerűen kitölteni,
majd a `\mainmatter` parancs utáni sorban kezdhetjük is írni a dolgozatot.
A tételszerű környezetek definíciói a preambulumban vannak, itt változtathatjuk meg, ha arra szükség lenne.
A stílus a `memoir.cls` stílus file egy további paraméterezése. Ha bármi továbbfejleszteni valót találunk akkor az első forrás a `memoir.cls` dokumentációja [memman.pdf](http://tug.ctan.org/tex-archive/macros/latex/contrib/memoir/memman.pdf)
Ennek megfelelően a `memoir.cls` valamennyi parametere a `corvinus.cls` stilusnak is paramétere.

Minden változtatási ötletet örömmel fogadok.
