function [outputSporocilo] = fnenkrat(inputSporocilo,kljuc)
%funkcija inputSporočilo odšifrira z enkratnim ključem
for i = 1:length(inputSporocilo)
    outputSporocilo(i) = kljuc(inputSporocilo(i));
    
end

