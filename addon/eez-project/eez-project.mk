CIRCLEHOME = ../..

CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.c")
CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.c")
CPPSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.cpp")

CFLAGS += -I $(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src -I $(CIRCLEHOME)/addon/eez-framework/src/flow -I $(CIRCLEHOME)/addon/eez-project/ui -I $(CIRCLEHOME)
CFLAGS += -DEEZ_FOR_LVGL -DLV_LVGL_H_INCLUDE_SIMPLE -I $(CIRCLEHOME)/addon/lvgl/lvgl

CPPFLAGS += -DEEZ_FOR_LVGL -I$(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src
CPPFLAGS += -I $(CIRCLEHOME)/addon/eez-framework/src/flow -I $(CIRCLEHOME)/addon/eez-project/ui -I $(CIRCLEHOME)

INCLUDE += -I $(CIRCLEHOME)/addon/lvgl/lvgl -I $(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src -I $(CIRCLEHOME)/addon/eez-project/ui
INCLUDE += -I $(CIRCLEHOME)/addon/eez-framework/src/flow -I $(CIRCLEHOME)
