# Makefile
#

CIRCLEHOME = ../..

LVGL_DIR = .
LVGL_DIR_NAME = lvgl
EEZ_DIR = .
EEZ_DIR_NAME = eez-framework/src

include $(LVGL_DIR)/lvgl/lvgl.mk
include $(EEZ_DIR)/eez-framework/src/eez.mk

OBJS = \
	ui.o $(CSRCS:.c=.o) \
	lvgl.o $(CSRCS:.c=.o)

EXTRACLEAN += $(CSRCS:.c=.o) $(CSRCS:.c=.d)

all: liblvgl.a libeez.a

ui.o: $(EEZ_DIR)/$(EEZ_DIR_NAME)/ui.c $(EEZ_DIR)/$(EEZ_DIR_NAME)/ui.h $(EEZ_DIR)/$(EEZ_DIR_NAME)/eez-framework.h

liblvgl.a: $(OBJS)
	@echo "  AR    $@"
	@rm -f $@
	@$(AR) cr $@ $(OBJS)
libeez.a: $(OBJS)
	@echo "  AR    $@"
	@rm -f $@
	@$(AR) cr $@ $(OBJS)

include $(CIRCLEHOME)/Rules.mk

INCLUDE += -I $(LVGL_DIR)
CFLAGS += -Wno-narrowing -Wno-pointer-to-int-cast -DEEZ_FOR_LVGL
_CFLAGS  = -I lvgl -I $(EEZ_DIR)/$(EEZ_DIR_NAME) -I $(EEZ_DIR)/$(EEZ_DIR_NAME)/eez -I . -Wno-int-to-pointer-cast -Wall -Wextra -Werror -Wno-unused-parameter -Wno-pointer-sign -Wno-sign-compare -fPIC

-include $(DEPS)

ifeq ($(strip $(CHECK_DEPS)),1)
-include $(EXOBJS:.o=.d)
endif

#
# Makefile
#
