#!/system/bin/sh
# /data/adb/service.d/0001deletethefuckingimei.sh, already has execute permission

# For debugging
#touch /sdcard/init

# Wait till the system boots up
while [ "$(getprop sys.boot_completed)" != "1" ]; do
  sleep 1
done

# For debugging
#touch /sdcard/after-boot

resetprop -p --delete persist.radio.imei
resetprop -p --delete persist.radio.imei1
resetprop -p --delete persist.radio.imei2
resetprop -p --delete persist.radio.meid
# For 3rd party ROMs like LineageOS
resetprop -p --delete ro.ril.oem.imei
resetprop -p --delete ro.ril.oem.imei1
resetprop -p --delete ro.ril.oem.imei2
resetprop -p --delete ro.ril.oem.meid
# For MIUI
resetprop -p --delete ro.ril.miui.imei
resetprop -p --delete ro.ril.miui.imei0
resetprop -p --delete ro.ril.miui.imei1
resetprop -p --delete ro.ril.miui.imei2
resetprop -p --delete ro.ril.miui.meid

# For debugging
#touch /sdcard/done
