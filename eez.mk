CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.c")
CPPSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.cpp")
#CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework/src/eez/flow -name "*.c")
#CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-framework/src/eez/flow -name "*.cpp")
CSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.c")
CPPSRCS += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.cpp")
INCLUDE += $(shell find -L $(CIRCLEHOME)/addon/eez-framework -name "*.h")
INCLUDE += $(shell find -L $(CIRCLEHOME)/addon/eez-project -name "*.h")
#INCLUDE += $(shell find -L $(CIRCLEHOME)/addon/eez-framework/src/eez/flow -name "*.h")

INCLUDE += -I $(LVGL_DIR)
CPPFLAGS += -Wno-narrowing -DEEZ_FOR_LVGL
_CFLAGS  = -I lvgl -I . -Wno-int-to-pointer-cast -Wall -Wextra -Werror -Wno-unused-parameter -Wno-pointer-sign -Wno-sign-compare -fPIC

LIBRARYDIRS = $(CIRCLEHOME)/addon/eez-framework/src \
	$(CIRCLEHOME)/addon/eez-framework/src/eez/flow \
	$(CIRCLEHOME)/addon/eez-framework

#-include $(DEPS)

#ifeq ($(strip $(CHECK_DEPS)),1)
#-include $(EXOBJS:.o=.d)
#endif
