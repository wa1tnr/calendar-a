#!/bin/sh

 cd  /usr/share/zoneinfo/Asia/ ; \
    for index in `ls -1` ; \
        do  echo -n `TZ=Asia/$index /bin/date` ; \
            echo ' Asia/'$index ; \
            sleep 0.1 ; \
        done

# end.
