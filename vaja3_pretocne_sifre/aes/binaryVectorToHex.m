function izhod = binaryVectorToHex(vhod)
izhod = zeros(size(vhod,1),2);
for i = 1: size(vhod,1)
    dec2hex(bin2dec( sprintf('%d',(vhod(i,:)))));
    
    izhod(i,:) = dec2hex(bin2dec( sprintf('%d',(vhod(i,:)))));
end