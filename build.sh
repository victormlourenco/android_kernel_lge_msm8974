if [ $# -gt 0 ]; then
echo $1 > .version
fi
 
make ARCH=arm CROSS_COMPILE=/home/victor/UBERTC/arm-linux-androideabi-5.2/bin/arm-linux-androideabi- zImage -j6
 
cp arch/arm/boot/zImage ~/anykernel_d802/
 
cd ~/anykernel_d802/
 
zipfile="RedKernel-rXXX-d802.zip"
echo "making zip file"
cp zImage zip/kernel/
 
cd zip/
rm -f *.zip
zip -r $zipfile *
rm -f /kernel/*.zip
cp *.zip /tmp
