connect="ssh -YC mike-ross x2x -west -to :0.0 -completeregionleft 1200 -completeregionup 1090 -completeregionright 2769 -completeregionlow 2160"
previous_process=$(ps -ef | grep "$connect" | grep -v "grep" | awk '{ print $2}')

if [ -z "$previous_process" ]
then
    $connect
else
    kill $previous_process
fi
