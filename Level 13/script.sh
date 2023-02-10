cd /tmp
mkdir steflb20
cp ~/data.txt hexdump.txt

# Reverse Hexdump
cat hexdump.txt | xxd -r > output.txt 

# Check dumps to recreate originial file
file output.txt
mv output.txt output.gz
gunzip output.gz
file output
mv output output.bz2
bunzip2 output.bz2
file output
mv output output.gz
gunzip output.gz
file output
mv output output.tar
tar -xf output.tar
ll
tar -xf output.tar
ll
file output.tar
file data5.bin
mv data5.bin data5.tar
tar -xf data5.tar
ll
file data6.bin
mv data6.bin data6.bz2
bunzip2 data6.bz2
ll
file data6
mv data6 data6.tar
tar -xf data6.tar
ll
file data8.bin
mv data8.bin data8.gz
gunzip data8.gz
ll
file data8
cat data8

# OUTPUT: The password is wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw
# Password: wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw