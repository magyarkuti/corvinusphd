# corvinusphd
LaTeX template for the Ph.D. dissertations of Corvinus University of Budapest, Hungary.

* A stilus file: `corvinusphd.cls` 
* A template file: `disszertacio.tex`
* Fordítás: 
```
latexmk disszertacio.tex
```

Helyezzük a `corvinusphd.cls` és a `disszertacio.tex` file-okat a dolgozatunk alkönyvtárába.
Szükséges még, hogy az ábrák ennek az alkönyvtárnak az `images/` alkönyvtárában legyenek.
Ajánlom, hogy a template file-t futtassuk először. A 'MiKTeX' vagy 'texlive' standard disztribúciókkal
a `disszertacio.tex` template file néhány warning üzenettel, de hiba nélkül fordít.

Ha ideáig eljutottunk, akkor a 'disszertacio.tex' file 3-10 soraiban definiált parancsokat kell értelmeszerűen kitölteni,
majd a `\mainmatter` parancs utáni sorban kezdhetjük is írni a dolgozatot.
A tételszerű környezetek definíciói a preambulumban vannak, itt változtathatjuk meg, ha arra szükség lenne.

Minden változtatási ötletet örömmel fogadok.
