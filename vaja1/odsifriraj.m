% naloga 3:

for i = 1:26
   disp([num2str(i),' ', fnCezar('szwo',-i,0)])
end

disp(['kljuc: ',num2str(8),' ', 'sporocilo: ',fnCezar('szwo',-8,0)])
disp(['kljuc: ',num2str(11),' ','sporocilo: ',fnCezar('szwo',-11,0)])

for i = 1:26
   disp([num2str(i),' ', fnCezar('Hzgxkcdhi',-i,0)])
end

disp(['kljuc: 15 ', 'sporocilo: ',fnCezar('Hzgxkcdhi',-15,0)])

for i = 1:127-32
   disp([num2str(i),' ', fnCezar('l#,9b-zz|9g~1.)(9$~9(z*)0~}z&9%)(~|9-0~.z94z9&~.)9KIOIG',-i,1)])
end

disp(['kljuc: 25 ', 'sporocilo: ',fnCezar('l#,9b-zz|9g~1.)(9$~9(z*)0~}z&9%)(~|9-0~.z94z9&~.)9KIOIG',-25,1)])

%naloga 4:
fnVigenere('LXFOPVEFRNHR', 'LEMON',0)
fnVigenere('OHV IWYXIEIR QAICEI VG S FZTYBR GY ZNTEMHMDNX NZHAVBVGWU MZXK OM MLDNX N GWKDEJ BT AGOEIJCNXI CRRGSK XIGUSJL', 'VARNOST',0)

%naloga 5:
fnSubstitucija('In cryptography, a substitution cipher is a method of encrypting in which units of plaintext are replaced with the ciphertext',1)

%naloga 6
kljuc = 'Živimo v informacijski družbi, v kateri se več kot polovica bruto družbenega proizvoda ustvari z ustvarjanjem, prenosom, obdelavo in prodajo informacij oziroma informacijskih storitev. Informacijsko komunikacijski sistemi (IKSi) so postali nujen del vsakodnevnega življenja. Z njimi se srečujemo, ko telefoniramo, gledamo televizijo, plačujemo z bančno kartico, dvigamo denar na bankomatu, pošljemo elektronsko pošto, brskamo po svetovnem spletu in še pri mnogih drugih vsakodnevnih opravilih. Življenja brez IKS si praktično ne znamo več predstavljati. Uporaba informacijsko komunikacijskih tehnologij (IKT) na vseh področjih življenja je zagotovo precej olajšala življenje in dvignila njegovo kvaliteto, vendar je hkrati s tem prinesla tudi nevarnost njihove zlorabe. Z ozirom na veliko vrednost, ki jo imajo informacije v informacijski družbi, je postala kraja informacij izredno privlačna. Z vdorom v IKS nekega podjetja je mogoče priti do vseh informacij o poslovanju, tržni strategiji, novih produktih in podobno, kar lahko izkoristi konkurenca. Z vdorom v bančni je mogoče prenašati denar iz enega računa na drugračun oziroma ustvarjati nov denar, ki je v informacijski družbi zgolj informacija v bančnem informacijskem sistemu, in na ta način neupravičeno pridobiti premoženje. V vojaškem informacijskem sistemu lahko nasprotnik pridobi informacije, ki mu prinesejo taktično in strateško prednost, kar lahko odloča o zmagi ali porazu. Vdor v na osebni računalnik lahko omogočidostop do osebnih podatkov, dostop do bančnega računa in tudi krajo identitete, kar lahko lastniku povzroči nepopravljivo škodo. Veliko škodo lahko povzroči tudi izguba določenih podatkov zaradi neprevidnega upravljanje z njimi oziroma z informacijsko komunikacijskim sistemom, na katerem se hranijo.'
sporocilo = [52,62,72,123,125,135,142,152,177,178,185,200,204,210,216,315,321,322,358, 373,376,377,378,405,432,464,468,470,489,641,650,667,701]
fnenkrat(sporocilo, kljuc)