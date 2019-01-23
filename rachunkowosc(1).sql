-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Sty 2019, 19:35
-- Wersja serwera: 10.1.26-MariaDB
-- Wersja PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `rachunkowosc`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--
CREATE DATABASE rachunkowosc;

CREATE TABLE `dane` (
  `ID` int(11) NOT NULL,
  `Pytanie` text CHARACTER SET utf8 NOT NULL,
  `OdpowiedzA` text CHARACTER SET utf8 NOT NULL,
  `OdpowiedzB` text CHARACTER SET utf8 NOT NULL,
  `OdpowiedzC` text CHARACTER SET utf8 NOT NULL,
  `OdpowiedzD` text CHARACTER SET utf8 NOT NULL,
  `Status` enum('Zaakceptowane','Oczekujace') DEFAULT NULL,
  `IDUzytkownika` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`ID`, `Pytanie`, `OdpowiedzA`, `OdpowiedzB`, `OdpowiedzC`, `OdpowiedzD`, `Status`, `IDUzytkownika`) VALUES
(1, 'Funkcja polityczna budżetu zajmuje się:  ', 'Kontrolą narodu nad działalnością rządu ', 'Dokonywaniem podziału dochodu narodowego ', 'Oddziaływaniem na przebieg procesów gospodarczych ', 'Żadna z odpowiedzi ', 'Zaakceptowane', 3),
(2, 'Gospodarka budżetowa obejmuje: ', 'Gromadzenie dochodów budżetowych ', 'Zgodności budżetu z narodowym planem społeczno - gospodarczym ', 'Normy mające zagwarantować prawidłowe funkcjonowanie budżetu', 'Zapewnienie równowagi gospodarczej ', 'Zaakceptowane', 3),
(3, 'Normy mające zagwarantować prawidłowe funkcjonowanie budżetu to: ', 'Zasady budżetowe ', 'Polityka budżetowa ', 'Gospodarka budżetowa ', 'Zasady zgodności budżetu z narodowym planem społeczno - gospodarczym ', 'Zaakceptowane', 3),
(4, 'Paragraf w podziałce budżetowej określa:', 'Szczegółowy rodzaj dochodów i wydatków ', 'Całą działalność jednostki ', 'Dział gospodarki i rodzaj usług socjalno-kulturalnych ', 'Resort lub wydział ', 'Zaakceptowane', 3),
(5, 'Zadaniem klasyfikacji budżetowej jest:', 'Wszystkie odpowiedzi są poprawne ', 'Określenie uprawnień organów państwowych do gromadzenia dochodów i przeznaczania ich na określone cele ', 'Kalkulowanie i normowanie kosztów działalności finansowanej z budżetu ', 'Wprowadzenie jednolitych zasad ewidencji i sprawozdawczości budżetowej ', 'Zaakceptowane', 3),
(6, 'Podmiotem gospodarki budżetowej jest: ', 'Jednostka budżetowa ', 'Podziałka przedmiotowa ', 'Jednostka pomocnicza', 'Gospodarstwo budżetowe ', 'Zaakceptowane', 3),
(7, 'Jednostką budżetową jest: ', 'Szkoła ', 'Kościół ', 'Kopalnia ', 'Pogotowie energetyczne ', 'Zaakceptowane', 3),
(8, 'Podmiot gospodarki budżetowej, który nie posiada swoich dochodów, albo są tak niskie, że nie wystarczają na pokrycie wydatków to: ', 'Jednostka budżetowa ', 'Zakład budżetowy ', 'Gospodarstwo pomocnicze ', 'Zadania specjalne ', 'Zaakceptowane', 3),
(9, 'Zadaniem budżetu państwa nie jest:  ', 'Wspieranie finansowe lokalnych przedsiębiorców ', 'Finansowanie potrzeb publicznych ', 'Zapewnienie równowagi gospodarczej ', 'Utrzymanie wzrostu gospodarczego ', 'Zaakceptowane', 3),
(10, 'Zasadą szczegółowości (specjalizacji) budżetu nie jest: ', 'Objęcie budżetem lub powiązanie z nim wszystkich dochodów i wydatków państwa ', 'Szczegółowe określenie źródeł dochodów i kierunków przeznaczenia wydatków zapewniające przejrzystość budżetu ', 'Grupowanie dochodów i wydatków według określonych kryteriów ', 'Umożliwienie analizy gospodarki budżetowej ', 'Zaakceptowane', 3),
(11, 'Modele bankowości to:', 'Model amerykański i kontynentalny.', 'Model amerykański i europejski.', 'Model europejski i kontynentalny.', 'Model kontynentalny i azjatycki.', 'Zaakceptowane', 1),
(12, 'Wybierz zdanie prawdziwe:', 'Dominujący w Europie model bankowości uniwersalnej nie oznacza zakazu tworzenia i funkcjonowania różnych banków specjalistycznych.', 'Dominujący w Europie model bankowości uniwersalnej oznacza zakaz tworzenia i funkcjonowania różnych banków specjalistycznych.', 'Dominujący w Europie model bankowości uniwersalnej oznacza nakaz tworzenia i funkcjonowania różnych banków specjalistycznych.', 'Żadne zdanie nie jest prawdziwe.', 'Zaakceptowane', 1),
(13, 'Do kryteriów klasyfikacji operacji bankowych należą:', 'Podmiot, zasięg, waluta, czas, przedmiot i forma pieniądza.', 'Typ pieniądza, czas, waluta, czas, podmiot i forma pieniądza.', 'Podmiot, rodzaj banku, waluta, czas, przedmiot i forma pieniądza.', 'Osoba prawna, zasięg, waluta, czas, przedmiot i forma pieniądza.', 'Zaakceptowane', 1),
(14, 'Wybierz czynność niezastrzeżoną dla banków:', 'Udzielanie pożyczek.', 'Wydawanie instrumentu pieniądza elektronicznego.', 'Emisja bankowych papierów wartościowych.', 'Udzielanie kredytów.', 'Zaakceptowane', 1),
(15, 'Operacją czynną jest:', 'Udzielanie kredytów, zakup papierów wartościowych.', 'Księgowane w pasywach.', 'Przyjmowanie depozytów, emisja dłużnych papierów wartościowych.', 'Pozyskanie i gromadzenie kapitału obcego.', 'Zaakceptowane', 1),
(16, 'Operacją bierną jest:', 'Pozyskanie i gromadzenie kapitału obcego.', 'Udzielanie kredytów, zakup papierów wartościowych.', 'Inwestowanie kapitału zgromadzonego w operacjach biernych.', 'Księgowane w aktywach.', 'Zaakceptowane', 1),
(17, 'Wybierz czynność zastrzeżoną dla banków:', 'Udzielanie i potwierdzanie gwarancji i akredytyw', 'Udzielanie i potwierdzanie poręczeń.', 'Operacje czekowe i wekslowe.', 'Pośrednictwo w dokonywaniu przekazów pieniężnych oraz rozliczeń w obrocie dewizowym.', 'Zaakceptowane', 1),
(18, 'Operacją pośredniczącą nie jest:', 'Inwestowanie kapitału zgromadzonego w operacjach biernych.', 'Prowadzenie rachunków, rozliczenia, wynajem skrytek, działalność doradcza , obrót papierami wartościowymi itp.', 'Świadczenie różnych usług na rzecz klientów.', 'Księgowana po obu stronach bilansu lub nie podlegająca ewidencji.', 'Zaakceptowane', 1),
(19, 'Element należący do kryterium klasyfikacji operacji bankowych - podmiot - to:', 'Operacje wewnątrzbankowe.', 'Operacje zagraniczne.', 'Operacje dewizowe.', 'Operacje czynne.', 'Zaakceptowane', 1),
(20, 'Rodzaj banków wyróżniony według specjalizacji branżowej, to:', 'Banki przemysłowe.', 'Banki regionalne.', 'Banki inwestycyjne', 'Banki kredytowo-depozytowe.', 'Zaakceptowane', 1),
(21, 'Co nie może być przedmiotem podatku?', 'Przychód', 'Majątek', 'Wydatek', 'Skala podatkowa', 'Zaakceptowane', 2),
(22, 'Które stwierdzenie pasuje do opisu sklai progresywnej?', 'Występuje, gdy dla jedego stosuje się więcej niż jedną stawkę.', 'Stawka rośnie wraz ze wzrostem podstawy opodatkowania.', 'Odwrotność stawki progresywnej.', 'Maleje w miarę wzrostu podstawy opodatkownia.', 'Zaakceptowane', 2),
(23, 'Funkcje podatów to: ', 'Fukcja fiskalna i stymulacyjna', 'Funkcja regulująca i regresywna', 'Funkcja regresywna i cenotwórcza', 'Funkcja globalna i fiskalna', 'Zaakceptowane', 2),
(24, 'Na czym polega funkcja regulacyjna podatków?', 'Funkcja pierwotna i najważniejsza.', 'Podatki są elemetem ceny i mają wpływ na jej poziom.', 'Podatki kształtują fundusz nabywczy podatnika.', 'Przez system ulg i zwolnień państwo stymuluje rozwój gospodarczy w określonych kierunkach.', 'Zaakceptowane', 2),
(25, 'Które stwierdzenie pasuje do funkcji fiskalnej podatków?', 'Przez system ulg i zwolnień państwo stymuluje rozwój gospodarczy w określonych kierunkach.', 'Funkcja pierwotna i najważniejsza.', 'Podatki kształtują fundusz nabywczy podatnika.', 'Podatki są elemetem ceny i mają wpływ na jej poziom.', 'Zaakceptowane', 2),
(26, 'Co nie należy do wydatków budżetów terenowych?', 'Wydatki majątkowe', 'Dotacje', 'Świadczenia na rzecz osób fizycznych', 'Dochody własne', 'Zaakceptowane', 2),
(27, 'Co nie należy do dochodów własnych budżetowych terenowych?', 'Opłata skarbowa', 'Podatek rolny', 'Podatek od nieruchomości', 'Wydatki majątkowe', 'Zaakceptowane', 2),
(28, 'Które zdanie jest fałszywe?', 'Progresja ciągła jest inaczej zwana progresją globalną', 'Dochody budżetu państwa dzielą się na dochody krajowe i zagraniczne.', 'Podatki dochodowe dzielą się na podatki od osób fizycznych i od osób prawnych.', 'Progresja może być globalna albo ciągła.', 'Zaakceptowane', 2),
(29, 'Rodzaje skal podatkowych:', 'Liniowa i degresywna', 'Ilościowa i wartościowa', 'Majątkowa i ilościowa', 'Regresywna i ekonomiczna', 'Zaakceptowane', 2),
(30, 'Ulgi i zwolnienia podatkowe:', 'Mają charakter przedmiotowy lub podmiotowy.', 'Występują w formie ukrytej w stawkach kwotowych.', 'To stosunek kwoty podatku od jego podstawy.', 'Zwolnienia podatkowe dzielą się na pośrednie o dochodowe.', 'Zaakceptowane', 2),
(31, 'Która z podanych odpowiedzi nie jest ogniwem systemu finansowego?', 'System kontrolny', 'System finansowy władzy państwowej', 'System bankowy i instytucji rynku kapitałowego', 'System ubezpieczeń majątkowych i osobowych', 'Zaakceptowane', 4),
(32, 'Jakie są funkcje finansów w ujęciu klasycznym?', 'Redystrybucyjna, bodźcowa oraz kontrolna', 'Tylko bodźcowa oraz kontrolna', 'Tylko redystrybucyjna oraz bodźcowa', 'Tylko redystrybucyjna oraz kontrolna', 'Zaakceptowane', 4),
(33, 'Jakie są funkcje finansów w ujęciu nowoczesnym?', 'Alokacyjna, regulacyjna oraz staabilizacyjna', 'Tylko alokacyjna oraz regulacyjna', 'Tylko alokacyjna oraz stabilizacyjna', 'Tylko regulacyjna oraz stabilizacyjna', 'Zaakceptowane', 4),
(34, 'Jaka jest jedna z pozaekonomicznych dyscyplin naukowych wykorzystywana w nauce finansów?', 'Socjologia', 'Finanse i rachunkowość', 'Informatyka', 'Ekonomia', 'Zaakceptowane', 4),
(35, 'Która z podanych odpowiedzi nie jest prawidłową klasyfikacją zjawisk finansowych?', 'Ogólna', 'Materialna', 'Redystrybucyjna', 'Emisyjna', 'Zaakceptowane', 4),
(36, 'Według wzoru fundusz nabywczy równy jest:', 'Wydatkom materialnym', 'Przychodom materialnym', 'Wydatkom restrybucyjnym', 'Przychodom emisyjnym', 'Zaakceptowane', 4),
(37, 'Jakie są funkcje systemu płatniczego?', 'Płatnicza, płynności, oszczędności i akumulacji oraz kredytowa', 'Płatnicza, ogólna, oszczędności i akumulacji, oraz kontrolna', 'Oszczędności i akumulacji, płynności, płatnicza', 'Kredytowa, ogólna, oszczędności i akumulaji, kontrolna', 'Zaakceptowane', 4),
(38, 'Która z cech nie jest cechą pieniądza w postaci idealnej?', 'Nie ma wpływu na kształtowanie się zjawisk finansowych', 'Wyraża się w cenie', 'Nie należy do kategorii finansowych', 'Spełni jedynie funkcję miernika wartości', 'Zaakceptowane', 4),
(39, 'Podstawę dla rozwoju finansów stanowi:', 'Teoria ekonomii', 'Teoria wartości pieniądza', 'Teoria polityki pieniądza', 'Teoria finansów', 'Zaakceptowane', 4),
(40, 'Wprowadzenie nowych instrumentów finansowych wymaga zastosowania:', 'Statystki oraz ekonoetrii', 'Tylko statystyki', 'Tylko ekonometrii', 'Statystyki, Ekonometrii oraz Ekonomii', 'Zaakceptowane', 4),
(41, 'Jedną z funkcji nadzoru bankowego jest funkcja:', 'Regulacyjna', 'Porządkująca', 'Wyrównująca', 'Ustalająca', 'Zaakceptowane', 5),
(42, 'System jednoszczeblowy jest charakterystyczny dla gospodarki:', 'Centralnie sterowanej', 'Mieszanej', 'Naturalnej', 'Rynkowej', 'Zaakceptowane', 5),
(43, 'Jednym z rodzajów systemów bankowych jest system:', 'Dwuszczeblowy', 'Trójszczeblowy', 'Wieloszczeblowy', 'Czteroszczeblowy', 'Zaakceptowane', 5),
(44, 'System jednoszczeblowy może mieć charakter systemu:', 'Wielobankowego', 'Dwubankowego', 'Multibankowego', 'Nonbankowego', 'Zaakceptowane', 5),
(45, 'Jeśli w państwie istnieje tylko jeden bank, wypełniający zarówno funkcje banku centralnego jak i banków operacyjnych to jest to system:', 'Monobankowy', 'Wielobankowy', 'Dwubankowy', 'Jednobankowy', 'Zaakceptowane', 5),
(46, 'Banki zglobalizowane charakteryzują się :', 'Różnymi, nieraz bardzo złożonymi stosunkami własności', 'Obrotem pieniędzmi w wielu walutach', 'Wymogiem znajomości języka angielskiego', 'Posiadaniem placówek na teranie każdego kraju', 'Zaakceptowane', 5),
(47, 'Powstanie dużych banków komercyjnych umożliwiło:', 'Lepszą analizę rynku', 'Zaciaganie większych kredytów', 'Zamknięcie mniejszych banków', 'Poprawę gospodarki w państwie', 'Zaakceptowane', 5),
(48, 'Utrzymanie stabilnego poziomu cen, przy jednoczesnym wspieraniu polityki gospodarczej Rządu jest zadaniem jakiego banku?', 'NBP', 'ING', 'BGŻ', 'MBanku', 'Zaakceptowane', 5),
(49, 'Funkcja banku emisyjnego to:', 'Określanie podaży pieniądza', 'Udzielanie kredytów', 'Udzielanie pożyczek', 'Dodruk pieniędzy', 'Zaakceptowane', 5),
(50, 'Jeden z rodzajów stóp procentowych NBP to stopa:', 'Redyskontowa', 'Nondyskontowa', 'Adyskontowa', 'Postdyskontowa', 'Zaakceptowane', 5),
(51, 'Wskaż prawidłowe typy ubezpieczenia', 'Społeczne i gospodarcze:', 'Prawne i finansowe', 'Publiczne i prywatne', 'Państwowe i własne', 'Zaakceptowane', 6),
(52, 'Ubezpieczenie społeczne w Polsce reprezentowane jest przez:', 'ZUS', 'KRUS', 'NBP', 'BFG', 'Zaakceptowane', 6),
(53, 'Ubezpieczenie na życie ma na celu:', 'Zgromadzenie środków, które mają w przyszłości zabezpieczyć finansowo oszczędzającego', 'Zmniejszenie płaconych podatków', 'Gromadzenie dodatkowych środków, które będą wypłacane jako dodatek do emerytury', 'Żadna z odpowiedzi', 'Zaakceptowane', 6),
(54, 'Jakie są cele ubezpieczeń gospodarczych?', 'Kompensacja strat losowych i prewencja', 'Oszczędzanie na podatki', 'Gromadzenie dodatkowych środków, które będą wypłacone w przypadku wypadków losowych', 'Wszystkie odpowiedzi są prawidłowe', 'Zaakceptowane', 6),
(55, 'Co nie jest funkcją ubezpieczeń gospodarczych', 'Funkcja alokacyjna', 'Funkcja gwarancyjna', 'Funkcja wychowawcza', 'Funkcja stymulująca', 'Zaakceptowane', 6),
(56, 'Jakie nie są wartości majątkowe?', 'Dodatnie', 'Istniejące', 'Przyszłe', 'Ujemne', 'Zaakceptowane', 6),
(57, 'Co nie jest kryterium klasyfikacji ryzyka?', 'Prawne i podatkowe', 'Finansowe i niefinansowe', 'Statyczne i dynamiczne', 'Osobowe i majątkowe', 'Zaakceptowane', 6),
(58, 'Jakie są cechy zdarzenia losowego?', 'Wszystkie odpowiedzi są poprawne', 'Masowość', 'Statystyczna prawidłowość', 'Nadzwyczajność', 'Zaakceptowane', 6),
(59, 'Czego nie może zrobić ubezpieczający się, aby dostać odszkodowanie?', 'Dokonać czynu umyślnie', 'Założyć nowe konto oszczędnościowe', 'Dokonać czynu nieumyślnie', 'Płacić składki', 'Zaakceptowane', 6),
(60, 'W jaki sposób nie definiujemy ubezpieczenia', 'Podatkowo', 'Ekonomicznie', 'Finansowo', 'Prawnie', 'Zaakceptowane', 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `IDUzytkownika` int(11) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Haslo` varchar(50) NOT NULL,
  `StatusUzytkownika` enum('Admin','Normalny') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`IDUzytkownika`, `Login`, `Haslo`, `StatusUzytkownika`) VALUES
(1, 'Paulina', 'krzeszowska', 'Admin'),
(2, 'Marta', 'kleczko', 'Admin'),
(3, 'Przemek', 'tabor', 'Admin'),
(4, 'Lukasz', 'suwaj', 'Admin'),
(5, 'Dominik', 'koziak', 'Admin'),
(6, 'Rafal', 'Stopka', 'Admin'),
(7, 'Cichorska', 'joanna', 'Admin'),
(8, 'Tomek', 'wajsman', 'Normalny');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`IDUzytkownika`),
  ADD UNIQUE KEY `uzytkownicy_Login_uindex` (`Login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `IDUzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
