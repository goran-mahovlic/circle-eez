CIRCLEHOME = ../..

CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.c")

CFLAGS += -I $(CIRCLEHOME)/addon/eez-framework -I $(CIRCLEHOME)/addon/eez-framework/src  -I $(CIRCLEHOME)/addon/eez-project/ui
CFLAGS += -DEEZ_FOR_LVGL -DLV_LVGL_H_INCLUDE_SIMPLE -I $(CIRCLEHOME)/addon/lvgl/lvgl

INCLUDE += -I $(CIRCLEHOME)/addon/lvgl/lvgl -I $(CIRCLEHOME)/addon/eez-project/ui
