#bin/sh

adb forward tcp:31415 tcp:31415
adb shell am startservice -n com.mwr.dz/.services.ServerService -c com.mwr.dz.START_EMBEDDED
drozer console connect
