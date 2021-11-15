function [outputSporocilo] = fnSubstitucija(inputSporocilo,smer, kljuc)
%funkcija inputSporočilo zašifrira z substitucijo šifro, s ključom kljuc. smer
% nam pove ali sporočilo šifriramo ali odšifriramo
abeceda = [' ','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
dolzina = length(inputSporocilo);
for i = 1: dolzina
    crka = inputSporocilo(i);
    if 'A'<= crka && crka <= 'Z' || crka == ' ' || crka == 32
        if smer == 1
            indeks = find(abeceda == crka,1);
            outputSporocilo(i) = kljuc(indeks);
        else
            if ismember(crka,kljuc)
            indeks = find(kljuc == crka,1);
            if indeks > 0
                outputSporocilo(i) = abeceda(indeks);
            end
            else
                outputSporocilo(i) = '-';
        end
    end
    end

end
disp(inputSporocilo)
disp(outputSporocilo)

