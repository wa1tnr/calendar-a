#!/bin/sh
# Thu 13 Mar 17:42:03 UTC 2025

echo allow testing against a timestamped file
echo instead of against the system current sense of now by the clock

# This allows for future testing against specific days
# when daylight savings for just one time zone or country
# changes for any reason.

# TESTING AHEAD OF NEED - this is meant as a supplemental, testing script, primarily.

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
            echo -n `TZ=$zoneWanted ls -la --full-time ~/.timestamped-yaa` ; echo -n ': '; echo $zoneWanted
            sleep 0.3
        done
    exit 0
}

# sample timestamped file:

# ENABLE THIS LINE - it WRITES to your FILESYSTEM:
# touch -t 202509150915 ~/.timestamped-yaa

payload

# end.
