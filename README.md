# INFO
This is based on Iperf-2.0.5

# BUILD
cd $PROJECT
$NDK_ROOT/ndk-build

# Run
cd $PROJECT
adb push libs/armeabi/iperf /aPathInYouAndroidPhone
adb shell iperf --help
