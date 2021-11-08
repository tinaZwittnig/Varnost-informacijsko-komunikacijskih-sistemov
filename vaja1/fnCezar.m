function [outputSporocilo] = fnCezar(inputSporocilo,kljuc, nerazdeljeno)
% funkcija inputSporočilo zašifrira z Cezarjevo šifro, s tem, da abecedo
% zamakne za ključ znakov. Nerazdeljeno nam pove, ali zamikamo celo ascii
% tabelo, ali posamezne abecede ločeno
outputSporocilo = inputSporocilo;
dolzina = length(inputSporocilo);
for i = 1: dolzina
    if nerazdeljeno == 0
    crka = inputSporocilo(i);
    if 'a'<= crka && crka <= 'z'
        dolAbecede = 'z'-'a'+1;
        sifcrka = 'a' + mod(crka+kljuc-'a',dolAbecede);
    elseif 'A'<= crka && crka <= 'Z'
        dolAbecede = 'Z'-'A'+1;
        sifcrka = 'A' + mod(crka+kljuc-'A',dolAbecede);
    elseif '0'<= crka && crka <= '9'
        dolAbecede = '9'-'0'+1;
        sifcrka = '0' + mod(crka+kljuc-'0',dolAbecede);
    else
        sifcrka = crka;
    end
    outputSporocilo(i) = char(sifcrka);
    else
        sifcrka = 32 + mod(inputSporocilo(i)+kljuc-32,127-32);
        outputSporocilo(i)=char(sifcrka);
    end
    


end

