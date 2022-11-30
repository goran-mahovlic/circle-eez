# Makefile
#

CIRCLEHOME = ../..

LVGL_DIR = .
LVGL_DIR_NAME = lvgl
# EEZ_FRAMEWORK_DIR_NAME = $(CIRCLEHOME)/addon/eez-framework/src
# EEZ_SAMPLES_DIR_NAME = $(CIRCLEHOME)/addon/eez-project/ui

include \
	$(LVGL_DIR)/lvgl/lvgl.mk \
	$(CIRCLEHOME)/eez.mk

#OBJS = lvgl.o $(CSRCS:.c=.o)

#EXTRACLEAN += $(CSRCS:.c=.o) $(CSRCS:.c=.d)

all: liblvgl.a libeez.a

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
CFLAGS += -Wno-narrowing -DEEZ_FOR_LVGL
_CFLAGS  = -I lvgl -I . -Wno-int-to-pointer-cast -Wall -Wextra -Werror -Wno-unused-parameter -Wno-pointer-sign -Wno-sign-compare -fPIC

#-include $(DEPS)

#ifeq ($(strip $(CHECK_DEPS)),1)
#-include $(EXOBJS:.o=.d)
#endif

#
# Makefile
#
