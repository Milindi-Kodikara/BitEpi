#!bin/bash
set -x

./BitEpi.o  -i sampleData/data.csv -o sampleData/out -t 1 -b1 10 -a1 0.001 -b2 0.502 -a2 35 -a3 0.003
./BitEpi.o  -i sampleData/data.csv -o sampleData/out -t 2 -b3 0.505 -b4 40 -a4 30 -sort
./BitEpi.o  -i sampleData/data.csv -o sampleData/out -t 1 -best

set +x

echo ">>>>>>> Output files"
ls -l sampleData/out*
echo "<<<<<<<<<<<<<<<<<<<<"

exit
