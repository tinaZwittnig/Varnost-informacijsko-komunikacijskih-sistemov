function [outputSporocilo] = fnSubstitucijaSlo(inputSporocilo,smer, kljuc)
%funkcija inputSporočilo zašifrira z substitucijo šifro, s ključom kljuc. smer
% nam pove ali sporočilo šifriramo ali odšifriramo
abec = [' ABCČDEFGHIJKLMNOPRSŠTUVZŽ'];
abeceda = sort(abec);
dolzina = length(inputSporocilo);
for i = 1: dolzina
    crka = inputSporocilo(i);
    if ismember(crka,abeceda)
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


