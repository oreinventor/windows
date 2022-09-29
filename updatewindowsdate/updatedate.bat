@echo off
date 21-08-2022
net stop w32time
net start w32time
w32tm /config /reliable:YES /manualpeerlist:"time.nist.gov time-a-b.nist.gov utcnist.colorado.edu ntp1.net.berkeley.edu ntp.gsu.edu clock.isc.org pool.ntp.org 0.pool.ntp.org 1.pool.ntp.org 2.pool.ntp.org 3.pool.ntp.org ntps1.pads.ufrj.br time.google.com time.cloudflare.com time.facebook.com time.windows.com time.apple.com clepsydra.dec.com time-a-g.nist.gov" /syncfromflags:manual /update
w32tm /resync /force