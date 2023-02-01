for ((i=0;i<=255;i++));
do 
    if ping -W 1 -c 1 10.93.182.${i}; then
        ping -W 1 -c 1 10.93.182.${i} >> ping_online.txt

    else
        eping -W 1 -c 1 10.93.182.${i} >> ping_offline.txt
    fi
done