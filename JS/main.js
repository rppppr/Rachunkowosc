$(document).ready(function ()
{
    //tablica przechowująca wszystkie elementy należące do menu
    var allLinks = $('li a');
    //funkcja przewijająca do poszczególnych sekcji, po kliknięciu na jedną z opcji menu
    $(allLinks).click(function ()
    {
        var target = $(this);
        var scroll = $(target.attr('href'));
        $('html, body').stop(true);
        $('html, body').animate(
            {
                scrollTop: scroll.offset().top - 70
            }, 1000);
    });
});
//klasa Pytania przyjmuje jako argumenty konstruktora typy NUMBER(INT), a następnie 5x pod rząd String
function Pytania(nr,tresc,odpA,odpB,odpC,odpD)
{
    this.nr = nr;
    this.tresc = tresc;
    this.odpA = odpA;
    this.odpB = odpB;
    this.odpC = odpC;
    this.odpD = odpD;
}

function StworzTablicePytan()
{
    //zmienna tablicowa przychowująca wszystkie pytania i odpowiedzi znajdujące się w bazie, jako obiekty klasy Pytania
    var pytania = [];
    //pętla, która indeksom zmiennej pytania, na podstawie "var i" przypisuje poszczególne wartości, z bazy danych
    for(var i = 0 ; i < 40 ; i++)
    {
        pytania[i] = new Pytania((i+1), (i+1) + " tresc pytania " + (i+1), "odp A "
                     + (i+1), "odp B " + (i+1), "odp C " + (i+1), "odp D " + (i+1));
    }
    //zwracamy tablicę wszystkich pytań, ułożonych w losowej kolejności
    return pytania;
}

function LosujPytaniaDoTestu()
{
    //zmienna tablicowa, która będzie przxychowywać elementy, które będziemy wyświetlać na stronie z pytaniami
    ////var tablicaLosowychPytan = [];
    //zmienna tablicowa, zawierająca wszystkie pytania z bazy danych
    var tablicaWszystkichPytan = StworzTablicePytan();
    //zmienne pomocnicze do poniższej pętli
    var losuj,losowePytanie;
    //pętla losuje PRZY ZAŁOŻENIU ŻE PYTAN JEST 40, dokładnie 20 pytań
    for(let i = tablicaWszystkichPytan.length - 1; i > 20 ; i--)
    {
        //losowo wybieramy indeks z dostępnego jeszcze zakresu (dekrementujemy wartość i w każdym obiegu pętli, aby uniknąć kopii)
        losuj = Math.floor(Math.random() * i);
        //do zmiennej pomocniczej przypisujemy wartość atualnie wczytanego pytania
        losowePytanie = tablicaWszystkichPytan[i];
        //do aktualnego indeksu tablicy, przypisujemy wylosowane pytanie
        tablicaWszystkichPytan[i] = tablicaWszystkichPytan[losuj];
        //dla uniknięcia kopii, przypisujemy aktualnie wczytanego pytania do losowego indeksu, następnie nastąpi dekrementacja, co uniemożliwi
        //ponowne wylosowanie tego samego pytania
        tablicaWszystkichPytan[losuj] = losowePytanie;
    }
    //zwracamy zmienną tablicową, już z konkretnymi wartościami, aby następnie móc wykorzystać funckję jako wartość zmiennej
    return tablicaWszystkichPytan;
}

//zmienna pomocnicza, odpowiadająca za indeks pytań wylosowanych poniżej
var nrPytania = 1;
//zmienna tablicowa która zawiera wszystkie wylosowane do testu pytania
var pytaniaDoTestu = LosujPytaniaDoTestu();
$(".nastepne").click(function ()
{
    //nie istnieje pytania nr 21, więc w momencie gdy mamy 20, chcemy w następnej kolejności wyświetlnić nr 1
    if(nrPytania === 20) { nrPytania = 1; }
    //w przeciwnym wypadku wyświetlamy kolejne pytanie
    else { nrPytania++; }
    //na podstawie indeksu, odpowiednim elementon przypisujemy odpowiednie wartości
    $(".pytanie").text(pytaniaDoTestu[nrPytania].tresc);
    $(".odp-A").text(pytaniaDoTestu[nrPytania].odpA);
    $(".odp-B").text(pytaniaDoTestu[nrPytania].odpB);
    $(".odp-C").text(pytaniaDoTestu[nrPytania].odpC);
    $(".odp-D").text(pytaniaDoTestu[nrPytania].odpD);
    $(".nr-pytania").text(nrPytania + "/20");
});
$(".poprzednie").click(function ()
{
    //nie istnieje pytania nr 0, więc w momencie gdy mamy 1, chcemy w następnej kolejności wyświetlnić nr 20
    if(nrPytania === 1) { nrPytania = 20; }
    //w przeciwnym wypadku wyświetlamy kolejne pytanie
    else { nrPytania--; }
    //na podstawie indeksu, odpowiednim elementon przypisujemy odpowiednie wartości
    $(".pytanie").text(pytaniaDoTestu[nrPytania].tresc);
    $(".odp-A").text(pytaniaDoTestu[nrPytania].odpA);
    $(".odp-B").text(pytaniaDoTestu[nrPytania].odpB);
    $(".odp-C").text(pytaniaDoTestu[nrPytania].odpC);
    $(".odp-D").text(pytaniaDoTestu[nrPytania].odpD);
    $(".nr-pytania").text(nrPytania + "/20");
});