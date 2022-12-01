CIRCLEHOME = ../..

CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.c")
CPPSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.cpp")
CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.c")

VPATH += :$(CIRCLEHOME)/addon/eez-framework
VPATH += :$(CIRCLEHOME)/addon/eez-framework/src
VPATH += :$(CIRCLEHOME)/addon/eez-framework/src/eez
VPATH += :$(CIRCLEHOME)/addon/eez-framework/src/eez/flow
VPATH += :$(CIRCLEHOME)/addon/eez-project

CFLAGS += "-I$(CIRCLEHOME)/addon/eez-framework"
INCLUDE += -I $(CIRCLEHOME)/addon/lvgl/lvgl -I $(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src -I $(CIRCLEHOME)/addon/eez-framework/src/flow -I $(LVGL_DIR)
CPPFLAGS += -DEEZ_FOR_LVGL

#CSRCS += lv_hal_disp.c
#CSRCS += lv_hal_indev.c
#CSRCS += lv_hal_tick.c

#DEPPATH += --dep-path $(LVGL_DIR)/$(LVGL_DIR_NAME)/src/hal
#VPATH += :$(LVGL_DIR)/$(LVGL_DIR_NAME)/src/hal

#CFLAGS += "-I$(LVGL_DIR)/$(LVGL_DIR_NAME)/src/hal"

#CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.c")
#CPPSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.cpp")
#CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.c")
#CPPSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.cpp")
#INCLUDE += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.h")
#INCLUDE += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.h")

#INCLUDE += -I $(LVGL_DIR)
#CPPFLAGS += -DEEZ_FOR_LVGL
#_CFLAGS  = -I lvgl -I . -Wno-int-to-pointer-cast -Wall -Wextra -Werror -Wno-unused-parameter -Wno-pointer-sign -Wno-sign-compare -fPIC

#LIBRARYDIRS = $(CIRCLEHOME)/addon/eez-framework/src \
#	$(CIRCLEHOME)/addon/eez-framework/src/eez/flow \
#	$(CIRCLEHOME)/addon/eez-framework

#-include $(DEPS)

#ifeq ($(strip $(CHECK_DEPS)),1)
#-include $(EXOBJS:.o=.d)
#endif
