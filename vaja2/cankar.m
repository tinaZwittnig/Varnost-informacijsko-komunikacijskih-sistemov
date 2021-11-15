na_klancu = fileread('Na_klancu.txt');
kljuc = 'DLFGCRZEJNAMŠSTBŽIČU VOPHK';
cistopis = ['JERMAN KAKŠNA JE BILA BESEDA KI STE JO REKLI KAJ STE IZNAŠLI DA BI ME DO DNA RANILI HLAPCI'...
    'ZA HLAPCE ROJENI ZA HLAPCE VZGOJENI USTVARJENI ZA HLAPČEVANJE GOSPODAR SE MENJA BIČ PA'...
    'OSTANE IN BO OSTAL NA VEKOMAJ ZATO KER JE HRBET SKRIVLJEN BIČA VAJEN IN ŽELJAN GLAS OD'...
    'OKNA ALI STE MOŽJE DA POSLUŠATE GLASOVI VSIVPREK LAKOT TI NAS BOŠ ZMERJAL NA CESTO'...
    'UDARITE JERMAN STOPI Z ENO NOGO NA STOL Z DRUGO NA MIZO HLAPCI MED VAS BI KRISTUS NE'...
    'PRIŠEL Z BESEDO PRIŠEL BI Z BIČEM NOREC KI SE JE NAPRAVIL DA BI VAM ODKLEPAL TO PAMET'...
    'DEVETKRAT ZAKLENJENO GLASOVI ZADOSTI JE KDO JE HLAPEC ŽENSKI GLASOVI ALI STE MOŽJE ALI'...
    'NISTE ALI DA GA ME RAZPRASKAMO' ];
SIFROPIS = fnSubstitucijaSlo(cistopis, 1,kljuc);
velike = upper(na_klancu);
velike(~ismember(velike,['A':'Z' 'Č' 'Š' 'Ž' ' '])) = '';
[pojavitev_crk_jezik]= fnAnalizaSlo(velike,1);
[pojavitev_sifro] =fnAnalizaSlo(SIFROPIS,1);
dolzina = length(pojavitev_crk_jezik);
dol2 = length(pojavitev_sifro);
sortirana_pojavitev_jezik = sortrows(pojavitev_crk_jezik,2);
sortirana_pojavitev_sifro = sortrows(pojavitev_sifro,2);
for i = 1:dolzina
    kljuc_tabela(i,:) = [sortirana_pojavitev_jezik(i,1) sortirana_pojavitev_sifro(i,1)];
   
end
sortiran_kljuc = sortrows(kljuc_tabela,1);
kljuc_odsifriraj = sortiran_kljuc(:,2)';
char(kljuc_tabela)
odsifriraj = fnSubstitucijaSlo(SIFROPIS,2,char(kljuc_odsifriraj));
disp(SIFROPIS)
disp(odsifriraj)
disp(cistopis)

%uspešno razvozlane črke

kljuc_uspenost = sum(kljuc == kljuc_odsifriraj)/length(kljuc)
tekst_uspesnost = sum(cistopis==odsifriraj)/length(cistopis)

%lahko bi bila večja ali manjša, odvisno od količine samoglasniov,
%presledkov. Če uspemo razvozljati znake, ki se največkrat pojavijo bo
%uspešnost večja. Vidimo lahko, da smo uspešno razvozljali 34% ključa,
%teksta pa nekoliko več, ker smo pravilno ugotovili kaj je presledek, kaj,
%je I, kaj je O. Ker se te znaki večkrat pojavijo je zato uspešnost večja.
%Vidmo, da se nam v šifropisu 22x projavita A in I. Program se je odločil
%za eno možnost sortiranja, morda bi bili v drugi možnosti uspešnejši. 



