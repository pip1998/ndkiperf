LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	../iperf/compat/Thread.c \
	../iperf/compat/error.c \
	../iperf/compat/delay.cpp \
	../iperf/compat/gettimeofday.c \
	../iperf/compat/inet_ntop.c \
	../iperf/compat/inet_pton.c \
	../iperf/compat/signal.c \
	../iperf/compat/snprintf.c \
	../iperf/compat/string.c
LOCAL_SRC_FILES += \
	../iperf/src/Client.cpp \
	../iperf/src/Extractor.c \
	../iperf/src/Launch.cpp \
	../iperf/src/List.cpp \
	../iperf/src/Listener.cpp \
	../iperf/src/Locale.c \
	../iperf/src/PerfSocket.cpp \
	../iperf/src/ReportCSV.c \
	../iperf/src/ReportDefault.c \
	../iperf/src/Reporter.c \
	../iperf/src/Server.cpp \
	../iperf/src/Settings.cpp \
	../iperf/src/SocketAddr.c \
	../iperf/src/main.cpp \
	../iperf/src/sockets.c \
	../iperf/src/stdio.c \
	../iperf/src/tcp_window_size.c \
	../iperf/src/gnu_getopt.c \
	../iperf/src/gnu_getopt_long.c \
	../iperf/src/service.c \

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../iperf \
	$(LOCAL_PATH)/../iperf/include

LOCAL_CFLAGS += -DHAVE_CONFIG_H
TARGET_FORMAT_STRING_CFLAGS := 
# LOCAL_LDLIBS += -lpthread
LOCAL_MODULE := iperf 
LOCAL_LDFLAGS += -static
include $(BUILD_EXECUTABLE)