[zap, perioda] = fnLFSR([0 0 0 1], [2 4]);
[zapored, peri] = fnLFSR([0 0 0 0 0 0 0 0 0 0 0 1], [2 4 9 10 11 12])

kljuc = [1 0 1 0 1 1 0 0 1 1 1 0 0 0 0 1];
sifropis = [ ...
1 1 0 0 0 1 0 0 0 1 0 1 0 1 0 0 0 0 1 1 0 1 1 1 1 1 0 0 0 0 1 0 ...
1 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 0 0 1 1 0 0 1 1 0 1 0 1 0 0 0 ...
1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0 1 0 0 1 0 1 1 0 0 0 0 1 0 1 ...
0 1 0 0 0 1 1 0 ];

[zapor, period]= fnLFSR(kljuc,[11 13 14 16]);
zapor = zapor(1:length(sifropis));
cistopis = double(xor(sifropis,zapor));
cistopis = reshape(cistopis,8,[])';
sporocilo = [];
for i = 1:length(cistopis)
    sporocilo(i) = char(bin2dec(num2str(cistopis(i,:))));
end
disp(char(sporocilo))


sifro = fnAES(cistopis, kljuc, smer, nacin)

