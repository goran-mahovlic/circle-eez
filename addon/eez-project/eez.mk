CIRCLEHOME = ../..

LVGL_DIR = $(CIRCLEHOME)/addon/lvgl

CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.c")
CPPSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.cpp")
CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.c")

VPATH += :$(CIRCLEHOME)/addon/eez-framework
VPATH += :$(CIRCLEHOME)/addon/eez-framework/src
VPATH += :$(CIRCLEHOME)/addon/eez-framework/src/eez
VPATH += :$(CIRCLEHOME)/addon/eez-framework/src/eez/flow
VPATH += :$(CIRCLEHOME)/addon/eez-project

CFLAGS += "-I$(CIRCLEHOME)/addon/eez-framework"
INCLUDE += -I $(CIRCLEHOME)/addon/lvgl/lvgl -I $(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src -I $(CIRCLEHOME)/addon/eez-framework/src/flow -I $(CIRCLEHOME)
CPPFLAGS += -DEEZ_FOR_LVGL

-include $(DEPS)

ifeq ($(strip $(CHECK_DEPS)),1)
-include $(EXOBJS:.o=.d)
endif
