function [sifropis] = fnAES(cistopis, kljuc, smer, nacin)
kljuc = dec2hex(kljuc);
    dolzina = size(cistopis,2);
    sifropis = zeros(1,dolzina);
    for  i = 1:32:max(size(cistopis))
        i2 = i+31;
       if nacin == 'ECB'
           if smer == 1
               cistopis =dec2hex(cistopis);
           sifropis(i:i2) = Cipher(kljuc, cistopis(i:i2));
           end
           if smer == 0
           sifropis(i:i2) = InvCipher(kljuc, cistopis(i:i2));
           end
       end
       if nacin == 'CBC'
          
           if smer == 1
              dolzina = size(dec2bin(cistopis));
              nakljucno = randi([0,1], dolzina);
              
           bin_vector = xor(nakljucno, dec2bin(cistopis));
           sifropis(i:i2) = Cipher(kljuc, binaryVectorToHex(bin_vector));
           sifro = sifropis(i:i2);
           sporocilo = zeros(size(cistopis,1));
           for ind= 1:length(sifro)/2
           sporocilo(ind) = char(hex2dec([sifro(ind),sifro(ind+length(sifro)/2)]));
           end
           nakljucno = dec2bin(sporocilo);
           end
           
           if smer == 0
               
           bin_vector = InvCipher(kljuc, cistopis(i:i2));
           sporocilo = zeros(size(bin_vector,1),1);
           for ind= 1:length(bin_vector)/2
           sporocilo(ind) = hex2dec([bin_vector(ind),bin_vector(ind+length(bin_vector)/2)]);
           end
           
           dol = size(dec2bin(sporocilo));
           nakljucno = randi([0,1], dol);
           sifropis(i:i2) = binaryVectorToHex(xor(nakljucno, dec2bin(sporocilo)));
           
           nakljucno = dec2bin(sporocilo);
           end
       end
    end
end