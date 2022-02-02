function [zaporedje,perioda] = fnLFSR(seme,odcepi)
%fnLFSR sprejme seme - začetno stanje pomikalnega registra in odcepi pa
%vektor odcepov registra. Zaporedje vektor s psevdonaključnim zaporedjem,
%perioda pa je perioda tega zaporedja.
zaporedje = [];
stanje = seme;
for i = 1:2^odcepi(end) - 1;
    zaporedje = [zaporedje stanje(end)];
    bitek = mod(sum(stanje(odcepi)),2);
    stanje = [bitek stanje(1:end-1)];
    if stanje == seme
        perioda = i;
        break
    end
end


end

