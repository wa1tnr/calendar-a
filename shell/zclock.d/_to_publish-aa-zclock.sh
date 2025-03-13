#!/bin/sh
# Thu 13 Mar 16:52:07 UTC 2025

# Print time of day examples, for the world, for right now.

# - - - - - - - - - - - - - - - - - - -
# - - - - -     functions   - - - - - -
# - - - - - - - - - - - - - - - - - - -

datex() {
    /bin/date "+%a %e %b %H:%M:%S %Z %Y"
}

payload() {
    for zoneWanted in \
        Pacific/Honolulu \
        US/Aleutian \
        America/Anchorage \
        America/Vancouver \
        America/Boise \
        America/Chicago \
        America/Montreal \
        Canada/Atlantic \
        Etc/GMT+3 \
        Etc/GMT+2 \
        America/Nuuk \
        Atlantic/Azores \
        Europe/London \
        Europe/Paris \
        Europe/Athens \
        Europe/Moscow \
        Asia/Yerevan \
        Asia/Yekaterinburg \
        Asia/Omsk \
        Asia/Saigon \
        Asia/Singapore \
        Asia/Tokyo \
        Pacific/Guam \
        Etc/GMT-11 \
        Australia/Sydney \
        Pacific/Fiji \
        Pacific/Auckland \
        Etc/GMT+11

        do
            echo -n `TZ=$zoneWanted datex` ; echo -n ': '; echo $zoneWanted
            sleep 0.3
        done
    exit 0
}

# - - - - - - - - - - - - - - - - - - -
# - - - - -    main program   - - - - -
# - - - - - - - - - - - - - - - - - - -

payload

# ENiD,

# Details

# This shell script gives a useful output
# for every time zone by hour and
# for every day of the year - or -
# is expected to do so, at the very least.

# Redundancies tolerated - intent is to have one
# working current example timestamp for all of
# the 24 hours of all days.

# To simplify, repeated times tolerated.

# END.
