#
# Makefile
#

#ENABLE_RECORDER = 1

CIRCLEHOME = ../..

OBJS	= main.o kernel.o

ifeq ($(strip $(ENABLE_RECORDER)),1)
OBJS	+= soundrecorder.o queue.o

LIBS	= $(CIRCLEHOME)/addon/fatfs/libfatfs.a \
	  $(CIRCLEHOME)/addon/SDCard/libsdcard.a \
	  $(CIRCLEHOME)/lib/fs/libfs.a

CFLAGS += -DENABLE_RECORDER=$(ENABLE_RECORDER)
endif

LIBS	+= $(CIRCLEHOME)/lib/sched/libsched.a \
	   $(CIRCLEHOME)/lib/libcircle.a

include ../Rules.mk

-include $(DEPS)
