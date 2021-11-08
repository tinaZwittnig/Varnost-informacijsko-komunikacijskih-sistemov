function [outputSporocilo] = fnSubstitucija(inputSporocilo,smer)
%funkcija inputSporočilo zašifrira z substitucijo šifro, s ključom kljuc. smer
% nam pove ali sporočilo šifriramo ali odšifriramo
abeceda = ['A':'Z']
shuffleabeceda = abeceda(randperm(length(abeceda)))
outputSporocilo = inputSporocilo;
lowerabeceda = lower(abeceda);
lowershuffleabeceda = lower(shuffleabeceda);
dolzina = length(inputSporocilo);
for i = 1: dolzina
    crka = inputSporocilo(i);
    if 'A'<= crka && crka <= 'Z'
        if smer == 1
            indeks = find(abeceda == crka,1);
            outputSporocilo(i) = shuffleabeceda(indeks);
        else
            indeks = find(shuffleabeceda == crka,1);
            outputSporocilo(i) = abeceda(indeks);
        end
    elseif 'a'<= crka && crka <= 'z'
        if smer == 1
            indeks = find(lowerabeceda == crka,1);
            outputSporocilo(i) = lowershuffleabeceda(indeks);
        else
            indeks = find(lowershuffleabeceda == crka,1);
            outputSporocilo(i) = lowerabeceda(indeks);
        end
    else
        outputSporocilo(i) = crka;
end
        
end

