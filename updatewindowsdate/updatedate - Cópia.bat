@echo off
date 23-05-2022
net stop w32time
w32tm /config /reliable:YES /manualpeerlist:"ntps1.pads.ufrj.br time.google.com time.cloudflare.com time.facebook.com time.windows.com time.apple.com clepsydra.dec.com time-a-g.nist.gov ntp1.vniiftri.ru ntp.mobatime.ru" /syncfromflags:manual /update
net start w32time
w32tm /resync /rediscover