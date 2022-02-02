kljuc = 'cistopis podoben'
cistopis = 'podoben cistopis'
dec2hex(cistopis)'
sifropis = char(fnAES(cistopis, kljuc, 1, 'ECB'))
cistopis2 = char(fnAES(sifropis, kljuc, 0, 'ECB'))
disp(char(cistopis2))

sporocilo = zeros(size(cistopis,1));
for i= 1:length(cistopis2)/2
    sporocilo(i) = char(hex2dec([cistopis2(i),cistopis2(i+length(cistopis2)/2)]));
end
disp(char(sporocilo))
sifropis22 = char(fnAES(cistopis, kljuc, 1, 'CBC'))
