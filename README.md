# bpir2wrt

Binaries build with following commands on a debain
PRETTY_NAME="Debian GNU/Linux 9 (stretch)"
4.9.0-8-amd64 #1 SMP Debian 4.9.110-3+deb9u6 x86_64 GNU/Linux


    mkdir bpi-r2

    cd bpi-r2

    mkdir testing

    git clone https://github.com/eliasmagn/bpir2wrt.git

    cd bpir2wrt

    ./scripts/feeds update -a && ./scripts/feeds install -a

    make menuconfig

    ionice -c 3 nice -n15 make -j18

use 
    ionice -c 3 nice -n15 make -jXX
    
    where XX is the number of your cpu threads + 1
    for example intel core i7 4770 9 (8threads +1)
    ryzen threadripper 2990WX 65 (64+1) = in this case i wouldnt use all threads 
    because maximal parallel compilation can cause issues  would use something like 
    18 or 20 is fast enough when you compile in ramdisk or on nvme or pcie ssds
    the bottleneck will be the harddisks in case you use more then 32 i assume.
