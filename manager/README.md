keepass2john manager.kdbx | cut -d “:” -f2 > manager.hash 

Make sure output is in this format: https://hashcat.net/wiki/doku.php?id=example_hashes 

Use on windows hashcat 

hashcat64.exe -a 3 -m 13400 -i manager.hash -1 ?d ?1?1?1?1?1?1?1?1?1?1?1?1?1?1?1?1 

pause 

 

$keepass$*2*60000*0*f31bf71589af9d69d3a9d58b97755405de93aedfbefe244129bb5ac64ed8af41*2f0e592de948bbc65eb9738af2daca231ae54c851ceb1e98f16a69e8f5f48336*8a868c9aedf169c857a8734188bba8eb*8f12fb161ef9e102ef805b84f5ee733c2a645b71099cbf8dab1ed750c58756ee*34fe5cf5eb7991a826a71c3330f88ce9c5ed7cf0e041e4e50a24110d2a69cdd7:157865 

 

Session..........: hashcat 

Status...........: Cracked 

Hash.Type........: KeePass 1 (AES/Twofish) and KeePass 2 (AES) 

Hash.Target......: $keepass$*2*60000*0*f31bf71589af9d69d3a9d58b9775540...69cdd7 

Time.Started.....: Sun Apr 05 17:29:48 2020 (8 secs) 

Time.Estimated...: Sun Apr 05 17:29:56 2020 (0 secs) 

Guess.Mask.......: ?1?1?1?1?1?1 [6] 

Guess.Charset....: -1 ?d, -2 Undefined, -3 Undefined, -4 Undefined 

Guess.Queue......: 6/16 (37.50%) 

Speed.#1.........:    12269 H/s (8.68ms) @ Accel:256 Loops:64 Thr:32 Vec:1 

Recovered........: 1/1 (100.00%) Digests, 1/1 (100.00%) Salts 

Progress.........: 100000/1000000 (10.00%) 

Rejected.........: 0/100000 (0.00%) 

Restore.Point....: 0/100000 (0.00%) 

Restore.Sub.#1...: Salt:0 Amplifier:0-1 Iteration:59968-60000 

Candidates.#1....: 123456 -> 176464 

Hardware.Mon.#1..: Temp: 69c Fan: 54% Util: 98% Core:1936MHz Mem:4513MHz Bus:16 

 

Started: Sun Apr 05 17:29:12 2020 

Stopped: Sun Apr 05 17:29:57 2020 

 

C:\Users\Isak\hashcat-5.1.0>pause 

Press any key to continue . . . 

where manager.hash is output from keepass2john 
