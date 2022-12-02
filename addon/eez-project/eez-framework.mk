CIRCLEHOME = ../..

CPPSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework/src -name "*.cpp")
#CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework/src -name "*.c")

#CFLAGS += -IEEZ_FOR_LVGL -DEEZ_OPTION_GUI=0 -DLV_LVGL_H_INCLUDE_SIMPLE
CPPFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/core -I $(CIRCLEHOME)
CPPFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/eez -I $(CIRCLEHOME)/addon/eez-framework/src
CPPFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/flow -I $(CIRCLEHOME)/addon/eez-framework/src/eez/fs
CPPFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/gui -I $(CIRCLEHOME)/addon/eez-framework/src/eez/libs -I $(CIRCLEHOME)/addon/eez-framework/src/eez/platform
CPPFLAGS += -DEEZ_FOR_LVGL -DEEZ_OPTION_GUI=0 -DLV_LVGL_H_INCLUDE_SIMPLE -I$(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src
CPPFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/flow -I $(CIRCLEHOME)/addon/eez-framework/src/eez/core -I $(CIRCLEHOME)/addon/eez-project/ui -I $(CIRCLEHOME)
CPPFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/gui/widgets/containers -I $(CIRCLEHOME)/addon/eez-framework/src/eez/gui/widgets

INCLUDE += -I $(CIRCLEHOME)/addon/lvgl/lvgl -I $(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src -I $(CIRCLEHOME)/addon/eez-project/ui
INCLUDE += -I $(CIRCLEHOME)/addon/eez-framework/src/flow -I $(CIRCLEHOME) -I $(CIRCLEHOME)/addon/eez-framework/src/eez/core -I $(CIRCLEHOME)/addon/eez-framework/src/eez/fs
INCLUDE += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/gui -I $(CIRCLEHOME)/addon/eez-framework/src/eez/libs -I $(CIRCLEHOME)/addon/eez-framework/src/eez/platform
INCLUDE += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/gui/widgets/containers -I $(CIRCLEHOME)/addon/eez-framework/src/eez/gui/widgets
#CPPFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/libs/agg
#CFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/libs/lz4
#CPPFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/libs/lz4
CPPFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/libs
#INCLUDE += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/libs/agg
#INCLUDE += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/libs/lz4
#INCLUDE += -I $(CIRCLEHOME)/addon/eez-framework/src/eez/libs
#CPPFLAGS += -std=c++14
#STANDARD ?= -std=c++14 -Wno-aligned-new

#include $(CIRCLEHOME)/Rules.mk
