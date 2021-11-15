function [pojavitve_crk] = fnAnalizaSlo(niz, prikazi)
%funkcija naredi ferkvenčno analizo znakov v nizu. 
abec = [' ' 'A' 'B' 'C' 'Č' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'R' 'S' 'Š' 'T' 'U' 'V' 'Z' 'Ž'];
abeceda = sort(abec);
dolzina  = length(abeceda);
pojavitve = zeros(1,dolzina);
for i = niz
    pojavitve = pojavitve + (abeceda == i);
    
end
pojavitve_crk = [double(abeceda') pojavitve'];
if prikazi
for i = 1:dolzina
    disp([pojavitve_crk(i,1),' ', num2str(pojavitve_crk(i,2))])
end
end
% bigramov = 1; 
% bigrami(1,1) = double(niz(1));
% bigrami(1,2) = double(niz(2));
% bigrami(1,3) = 1;
% for i = 2: length(niz)-1
%     obstojec = 0;
%     for j = 1:bigramov
%         if niz(i) == bigrami(j,1) && niz(i+1) == bigrami(j,2)
%             bigrami(j,3) = bigrami(j,3) +1;
%             obstojec = 1;
%         end
%     end
%     if obstojec == 0
%         bigramov = bigramov +1;
%         bigrami(bigramov,1) = double(niz(i));
%         bigrami(bigramov,2) = double(niz(i+1));
%         bigrami(bigramov,3) = 1;
%     end
% end
% if prikazi
% izpisi = sortrows(bigrami,3);
% for j = 1: length(bigrami)
%     disp([izpisi(j,1),izpisi(j,2),' ', num2str(izpisi(j,3))])
% end
% end
% 
% trigramov = 1; 
% trigrami(1,1) = double(niz(1));
% trigrami(1,2) = double(niz(2));
% trigrami(1,3) = double(niz(3));
% trigrami(1,4) = 1;
% for i = 2: length(niz)-2
%     obstojec = 0;
%     for j = 1:trigramov
%         if niz(i) == trigrami(j,1) && niz(i+1) == trigrami(j,2) && niz(i+2) == trigrami(j,3)
%             trigrami(j,4) = trigrami(j,4) +1;
%             obstojec = 1;
%         end
%     end
%     if obstojec == 0
%         trigramov = trigramov +1;
%         trigrami(trigramov,1) = double(niz(i));
%         trigrami(trigramov,2) = double(niz(i+1));
%         trigrami(trigramov,3) = double(niz(i+2));
%         trigrami(trigramov,4) = 1;
%     end
% end
% if prikazi
% izpisi = sortrows(trigrami,4);
% for j = 1: length(trigrami)
%     disp([izpisi(j,1),izpisi(j,2),izpisi(j,3),' ', num2str(izpisi(j,4))])
% end
% end
end

