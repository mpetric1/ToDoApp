#  Zadatak : todo lista

## Opis zadatka
Potrebno je kreirati web aplikaciju za logiranje zadataka korisnika. Ukoliko se koristi OpenUI5 ili SapUI5 framework nije potrebno raditi autentifikaciju.  
U slučaju korištenja negog drugog frameworka potrebno je napraviti stranicu za prijavu (prijava novog korisnika nije potrebna).  
U formi aplikacije "Todo Lista" (Slika 2) korisnik može pregledavati i dodavati zadatke.  
U formi aplikacije "Todo zadatak" (Slika 3) korisnik može detaljno opisati zadatak sa prioritetima, statusom i rokom do kojeg je potrebno izvršiti zadatak.  

## Implementacija frontend
Za implementaciju možete korisiti jedan od javascript frameworka-a
- OpenUI5/SapUI5 (preferirano)
- React
- Vue
- Javascript (bez frameworka)

## Implementacija frontend
Za implementaciju se može korisiti bilo koji backend u javascriptu, ali poželjno je korisiti SAP CAP priložen kao template.  
Na produkcijskoj okolini koristimo SAP ABAP CDS/oData implementaciju, stoga se možete odlučiti za istu uz prethodni dogovor.

## Prijava na todo listu (Slika 1)
![](./media/ToDo-Login%20page.drawio.svg)

## Todo lista (Slika 2)
![](./media/TodoList-ToDoList%20page.drawio.svg)

# Todo zadatak - detaljni prikaz
![](./media/TodoList-Task%20page.drawio.svg)


## Datamodel
![](./media/TodoList-ToDoList%20datamodel.drawio.svg)


## Organizacija projekta


Project sadrži sljedeće direktorije, ovo je preporučena struktura:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | domain models and data go here
`srv/` | service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this guide


## Koraci za instalaciju

- Instaliraj node.js
- Instaliraj SAP Cloud Application Programming Model (CAP) `npm i -g @sap/cds-dk` 
- U direktoriju u kojem se nalazi projekt pokrenuti instalacija sqlite baze `cds deploy --to sqlite:my.db`
- u istom direktoriju pokrenuti `npm install`  
- u istom direktriju pokrenuti `cds watch` 
- Nakon pokretanja u konzoli će se ispisati url adresa npr. [http://localhost:4004](http://localhost:4004) na kojoj će se pokrenuti testna aplikaciju koju je potrebno zamijeniti prema zahtjevu zadataka

## Default za nove zadatake
- Status = New 
- Priority = Normal 

## Polje za pretraživanje
Pretraživanje se izvršava po svim tekstualnim poljima

## Vrijednosti za polja status i prioritet
- Status = tablica TodoListStatus
- Prioritet = tablica TodoListPriority

## Instalacija baze
- cds deploy --to sqlite:my.db

## Dokumentacija
- [SAP Cloud Application Programming Model (CAP)](https://cap.cloud.sap/docs/get-started/)

## Alati za razvoj OpenUI5, SapUI5 i Fiori aplikacija
- [Visual studio code](https://code.visualstudio.com/)
- [SAP Fiori Tools - Extension Pack](https://marketplace.visualstudio.com/items?itemName=SAPSE.sap-ux-fiori-tools-extension-pack)
- [Node.js](https://nodejs.org/en/download/)



