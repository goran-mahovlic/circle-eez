#
# Makefile
#

CIRCLEHOME = ../../..


OBJS = main.o $(CSRCS:.c=.o)

EXTRACLEAN += $(CSRCS:.c=.o) $(CSRCS:.c=.d)

#OBJS	= main.o kernel.o

LIBS    = ../liblvgl.a \
         ../libeez.a \
          $(CIRCLEHOME)/lib/usb/libusb.a \
          $(CIRCLEHOME)/lib/input/libinput.a \
          $(CIRCLEHOME)/lib/fs/libfs.a \
          $(CIRCLEHOME)/lib/libcircle.a

include $(CIRCLEHOME)/Rules.mk \
	$(CIRCLEHOME)/eez.mk

#CPPSRCS += kernel.cpp
#CPPSRCS += main.cpp
#INCLUDE += kernel.h
INCLUDE += -I $(LVGL_DIR) -I $(CIRCLEHOME)/addon/eez-framework/src -I $(CIRCLEHOME)/addon -I .
CPPFLAGS += -Wno-narrowing -DEEZ_FOR_LVGL -DEEZ_OPTION_GUI=0
_CFLAGS  = -I lvgl -I . -Wno-int-to-pointer-cast -Wall -Wextra -Werror -Wno-unused-parameter -Wno-pointer-sign -Wno-sign-compare -fPIC

-include $(DEPS)
#LIBRARYDIRS = $(CIRCLEHOME)/addon/eez-framework/src \
#        $(CIRCLEHOME)/addon/eez-framework/src/eez/flow \
#        $(CIRCLEHOME)/addon/eez-framework


#include $(CIRCLEHOME)/Rules.mk
#include $(CIRCLEHOME)/eez.mk
#
#-include $(DEPS)
