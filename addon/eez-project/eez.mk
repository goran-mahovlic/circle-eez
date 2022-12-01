CIRCLEHOME = ../..

CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.c")
CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.c")
CPPSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.cpp")
#CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.c")

CFLAGS += -I $(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src -I $(CIRCLEHOME)/addon/eez-framework/src/flow -I $(CIRCLEHOME)/addon/eez-project/ui -I $(CIRCLEHOME)
CPPFLAGS += -DEEZ_FOR_LVGL -I$(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src -I $(CIRCLEHOME)/addon/eez-framework/src/flow -I $(CIRCLEHOME)/addon/eez-project/ui -I $(CIRCLEHOME)
#CPPFLAGS += -DEEZ_FOR_LVGL -I $(CIRCLEHOME)/addon/lvgl/lvgl
CFLAGS += -DEEZ_FOR_LVGL -DLV_LVGL_H_INCLUDE_SIMPLE -I $(CIRCLEHOME)/addon/lvgl/lvgl

INCLUDE += -I $(CIRCLEHOME)/addon/lvgl/lvgl -I $(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src -I $(CIRCLEHOME)/addon/eez-project/ui -I $(CIRCLEHOME)/addon/eez-framework/src/flow -I $(CIRCLEHOME)
