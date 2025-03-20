#!/bin/sh
# Thu 20 Mar 01:26:11 UTC 2025
# was: Thu 13 Mar 11:08:18 UTC 2025

# Now with alternate latin_payload
# to bias below the Equator
# in the Americas

datex() {
    /bin/date "+%a %e %b %H:%M:%S %Z %Y"
}

legend_up() {
    echo "Day Dt Mon hh:mm:ss UTC Year: Zone name"
}


# bermuda cordoba s georgia london telaviv yerevan singapor guam wake

nopayl() {
    for zoneWanted in \
        Atlantic/Bermuda \
        America/Buenos_Aires \
        America/Argentina/Cordoba \
        Atlantic/South_Georgia \
        Europe/London \
        Asia/Tel_Aviv \
        Asia/Yerevan \
        Asia/Singapore \
        Pacific/Guam \
        Pacific/Wake
        do
            echo -n `TZ=$zoneWanted /bin/date`
            echo -n ': '
            echo $zoneWanted ' mishmash'
        done
}

latin_payload() {
    for zoneWanted in \
        \
        America/Managua \
        Etc/GMT+6 \
        America/Bogota \
        Etc/GMT+5 \
        America/Caracas \
        Etc/GMT+4 \
        America/Buenos_Aires \
        Etc/GMT+3

        do
            echo -n `TZ=$zoneWanted datex` ; echo -n ': '; echo $zoneWanted
            sleep 0.3
	done
}

conus_payload() {
    for zoneWanted in \
        \
        America/Denver \
        Etc/GMT+6 \
        America/Chicago \
        Etc/GMT+5 \
        America/New_York \
        Etc/GMT+4 \
        America/Halifax \
        Etc/GMT+3

        do
            echo -n `TZ=$zoneWanted datex` ; echo -n ': '; echo $zoneWanted
            sleep 0.3
	done

}

payload() {
    for zoneWanted in \
          \
        Etc/GMT+12 \
        Pacific/Midway \
        Etc/GMT+11 \
        Pacific/Honolulu \
        Etc/GMT+10 \
        US/Aleutian \
        Etc/GMT+9 \
        America/Anchorage \
        Etc/GMT+8 \
        America/Los_Angeles \
        Etc/GMT+7
        do
            echo -n `TZ=$zoneWanted datex` ; echo -n ': '; echo $zoneWanted
            sleep 0.3
        done

    conus_payload
    # latin_payload

    for zoneWanted in \
          \
        America/Scoresbysund \
        Etc/GMT+2 \
        Atlantic/Azores \
        Etc/GMT+1 \
        Europe/Lisbon \
        Etc/GMT+0 \
        Europe/Paris \
        Etc/GMT-1 \
        Europe/Helsinki \
        Etc/GMT-2 \
        Europe/Moscow \
        Etc/GMT-3 \
        Asia/Dubai \
        Etc/GMT-4 \
        Asia/Yekaterinburg \
        Etc/GMT-5 \
        Asia/Omsk \
        Etc/GMT-6 \
        Asia/Saigon \
        Etc/GMT-7 \
        Asia/Hong_Kong \
        Etc/GMT-8 \
        Asia/Tokyo \
        Etc/GMT-9 \
        Asia/Vladivostok \
        Etc/GMT-10 \
        Australia/Sydney \
        Etc/GMT-11 \
        Pacific/Fiji \
        Etc/GMT-12 \
        Pacific/Auckland \
        Etc/GMT-13 \
        Pacific/Kiritimati \
        Etc/GMT-14
        do
            echo -n `TZ=$zoneWanted datex` ; echo -n ': '; echo $zoneWanted
            sleep 0.3
        done
}

aoe_payload() {
        echo -n `TZ=Etc/GMT+12  datex` ; echo -n ': '; echo "AoE*"
        sleep 0.3
}

# echo -n `TZ=$zoneWanted datex` ; echo -n ': '; echo $zoneWanted

echo "AoE - anywhere on Earth - "
echo "      last place to observe any given calendar date"
echo

legend_up
aoe_payload
# nopayl
payload
echo
echo "UTC +14 first place to observe any calendar date"
echo
echo '    ' conus_payload: Denver, Chicago, New_York and Halifax
echo '    ' latin_payload: Managua, Bogota, Caracas and Buenos_Aires
echo
echo "vsc-wokwi-328p-aa/oob.d/zclock.d/_zclock_sh.r00a.sh"
echo
echo -n 'UTC: ' ; datex

# end.
