CIRCLEHOME = ../..

CPPSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.cpp")

CPPFLAGS += -I $(CIRCLEHOME) -I $(CIRCLEHOME)
CPPFLAGS += -DEEZ_FOR_LVGL -DLV_LVGL_H_INCLUDE_SIMPLE -I $(CIRCLEHOME)/addon/lvgl/lvgl

INCLUDE += -I $(CIRCLEHOME)/addon/lvgl/lvgl

