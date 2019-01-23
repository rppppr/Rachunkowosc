function Pytania(nr,tresc,tablica)
{
    this.nr = nr;
    this.tresc = tresc;
    this.tablica = tablica;
}
function StworzTablicePytan()
{
    //zmienna tablicowa przychowująca wszystkie pytania i odpowiedzi znajdujące się w bazie, jako obiekty klasy Pytania
    var pytania = [];
    var tablica = [1,2,3,4];
    pytania[0] = tablica;

    //pętla, która indeksom zmiennej pytania, na podstawie "var i" przypisuje poszczególne wartości, z bazy danych
    for(var i = 0 ; i < 40 ; i++)
    {
        pytania[i] = new Pytania((i+1), (i+1) + " tresc pytania " + (i+1), ["odp A "
            + (i+1), "odp B " + (i+1), "odp C " + (i+1), "odp D " + (i+1)]);
        console.log(pytania[i]);
    }
    //zwracamy tablicę wszystkich pytań, ułożonych w losowej kolejności
    return pytania;
}
StworzTablicePytan();