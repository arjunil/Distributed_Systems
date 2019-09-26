logfile=".log"
for i in {1..3}; do ./simpledynamo-grading.linux app-debug.apk | tee $i$logfile  ; done
