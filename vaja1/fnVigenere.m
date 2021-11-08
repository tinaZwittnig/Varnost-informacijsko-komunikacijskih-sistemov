function [outputSporocilo] = fnVigenere(inputSporocilo,kljuc, smer)
% funkcija inputSporočilo zašifrira z Vigenere šifro, s ključom kljuc. smer
% nam pove ali sporočilo šifriramo ali odšifriramo
outputSporocilo = inputSporocilo;
dolzina = length(inputSporocilo);
dolzinaKljuc = length(kljuc);
dolAbecede = 'Z'-'A'+1;
ind =0;
for i = 1: dolzina
    crka = inputSporocilo(i);
    if 'A'<= crka && crka <= 'Z'
        ind = ind +1;
        indeks = mod(ind-1,dolzinaKljuc)+1;
    if smer ==1
        sifcrka = 'A' + mod(crka+kljuc(indeks)-'A'-'A',dolAbecede);
        outputSporocilo(i) = sifcrka;
    else
        acrka = crka - 'A';
        akljuc = kljuc(indeks)-'A';
        odsifcrka = 'A' + mod(acrka-akljuc + 26, dolAbecede);
        outputSporocilo(i) = odsifcrka;
        
    end
    else
        outputSporocilo(i) = crka;
    end
        
end


end

