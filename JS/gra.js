//klasa Pytania przyjmuje jako argumenty konstruktora typy NUMBER(INT), a następnie 5x pod rząd String
function Pytania(tresc,odpA,odpB,odpC,odpD)
{
    this.tresc = tresc;
    this.wariantyOdpowiedzi = [odpA,odpB,odpC,odpD];
    this.odpowiedz = odpA;
    this.zaznaczona = 0;
    this.odpowiedzUzytkownika = "";
}
function shuffleArray(array)
{
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
}
function StworzTablicePytan()
{
    let tablicaWszystkichPytan = [];
    for(var a = 0; a < iloscPytan ; a++)
    {
        tablicaWszystkichPytan[a] = new Pytania(tablicaJSON[a].tresc,tablicaJSON[a].tablicaOdpowiedzi[0],tablicaJSON[a].tablicaOdpowiedzi[1],
            tablicaJSON[a].tablicaOdpowiedzi[2],tablicaJSON[a].tablicaOdpowiedzi[3])
            shuffleArray(tablicaWszystkichPytan[a].wariantyOdpowiedzi);
    }
    return tablicaWszystkichPytan;
}

function LosujPytaniaDoTestu()
{
    //zmienna tablicowa, zawierająca wszystkie pytania z bazy danych
    var tablicaWszystkichPytan = StworzTablicePytan();
    //zmienna przechowuja ilość pytan, powinna osiagnac wartosc 20
    var iloscPytan = 0;
    //zmienne pomocnicze do poniższej pętli
    var losuj,losowePytanie;

    for(var i = tablicaWszystkichPytan.length - 1; iloscPytan < 20 ; i--)
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
        iloscPytan++;
    }
    //zwracamy zmienną tablicową, już z konkretnymi wartościami, aby następnie móc wykorzystać funckję jako wartość zmiennej
    return tablicaWszystkichPytan;
}

var pytaniaDoTestu = LosujPytaniaDoTestu();

var nrPytania = 1;
$(".nastepne").click(function ()
{
    //nie istnieje pytania nr 21, więc w momencie gdy mamy 20, chcemy w następnej kolejności wyświetlnić nr 1
    if(nrPytania === 19) { nrPytania = 0; }
    //w przeciwnym wypadku wyświetlamy kolejne pytanie
    else { nrPytania++; }
    //na podstawie indeksu, odpowiednim elementon przypisujemy odpowiednie wartości
    $(".pytanie").text(pytaniaDoTestu[nrPytania].tresc);
    $(".odp-A").text(pytaniaDoTestu[nrPytania].wariantyOdpowiedzi[0]);
    $(".odp-B").text(pytaniaDoTestu[nrPytania].wariantyOdpowiedzi[1]);
    $(".odp-C").text(pytaniaDoTestu[nrPytania].wariantyOdpowiedzi[2]);
    $(".odp-D").text(pytaniaDoTestu[nrPytania].wariantyOdpowiedzi[3]);
    $(".nr-pytania").text((nrPytania + 1) + "/20");
    $(".odpowiedz").removeClass("zaznaczona");
    if(pytaniaDoTestu[nrPytania].zaznaczona === 1) {$(".odp-A").addClass("zaznaczona"); }
    if(pytaniaDoTestu[nrPytania].zaznaczona === 2) {$(".odp-B").addClass("zaznaczona"); }
    if(pytaniaDoTestu[nrPytania].zaznaczona === 3) {$(".odp-C").addClass("zaznaczona"); }
    if(pytaniaDoTestu[nrPytania].zaznaczona === 4) {$(".odp-D").addClass("zaznaczona"); }
});
$(".poprzednie").click(function ()
{
    //nie istnieje pytania nr 0, więc w momencie gdy mamy 1, chcemy w następnej kolejności wyświetlnić nr 20
    if(nrPytania === 0) { nrPytania = 19; }
    //w przeciwnym wypadku wyświetlamy kolejne pytanie
    else { nrPytania--; }
    //na podstawie indeksu, odpowiednim elementon przypisujemy odpowiednie wartości
    $(".pytanie").text(pytaniaDoTestu[nrPytania].tresc);
    $(".odp-A").text(pytaniaDoTestu[nrPytania].wariantyOdpowiedzi[0]);
    $(".odp-B").text(pytaniaDoTestu[nrPytania].wariantyOdpowiedzi[1]);
    $(".odp-C").text(pytaniaDoTestu[nrPytania].wariantyOdpowiedzi[2]);
    $(".odp-D").text(pytaniaDoTestu[nrPytania].wariantyOdpowiedzi[3]);
    $(".nr-pytania").text((nrPytania + 1) + "/20");
    $(".odpowiedz").removeClass("zaznaczona");
    if(pytaniaDoTestu[nrPytania].zaznaczona === 1) {$(".odp-A").addClass("zaznaczona"); }
    if(pytaniaDoTestu[nrPytania].zaznaczona === 2) {$(".odp-B").addClass("zaznaczona"); }
    if(pytaniaDoTestu[nrPytania].zaznaczona === 3) {$(".odp-C").addClass("zaznaczona"); }
    if(pytaniaDoTestu[nrPytania].zaznaczona === 4) {$(".odp-D").addClass("zaznaczona"); }
});
$(".odpowiedz").click(function ()
{
    $(".odpowiedz").removeClass("zaznaczona");
    $(this).addClass("zaznaczona");
    if ($(this).hasClass("odp-A"))
    {
        pytaniaDoTestu[nrPytania].zaznaczona = 1;
    }
    if ($(this).hasClass("odp-B"))
    {
        pytaniaDoTestu[nrPytania].zaznaczona = 2;
    }
    if ($(this).hasClass("odp-C"))
    {
        pytaniaDoTestu[nrPytania].zaznaczona = 3;
    }
    if ($(this).hasClass("odp-D"))
    {
        pytaniaDoTestu[nrPytania].zaznaczona = 4;
    }
    pytaniaDoTestu[nrPytania].odpowiedzUzytkownika = $(this).text();
});
function ObliczIloscPunktow()
{
    var iloscPunktow = 0;
    for(let i = 0 ; i < pytaniaDoTestu.length ; i++)
    {
        if(pytaniaDoTestu[i].odpowiedzUzytkownika === pytaniaDoTestu[i].odpowiedz)
        {
            iloscPunktow++;
        }
    }
    return iloscPunktow;
}

function functionConfirmReset(msg,zakoncz)
{
    var punkty = ObliczIloscPunktow();
    var confirmBox = $("#confirm");
    confirmBox.find(".message").text(msg + " " + punkty);
    confirmBox.find(".restart").unbind().click(function()
    {
        location.reload();
    });
    confirmBox.find(".restart").click(zakoncz);
    confirmBox.show();
}