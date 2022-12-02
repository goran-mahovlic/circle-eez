#
# Makefile
#

CIRCLEHOME = ../..

LVGL_DIR = ../
LVGL_DIR_NAME = lvgl

include eez-framework.mk \
	eez-project.mk

OBJS = $(CPPSRCS:.cpp=.o) $(CSRCS:.c=.o)
EXTRACLEAN += $(CPPSRCS:.cpp=.o) $(CPPSRCS:.cpp=.d) $(CSRCS:.c=.o) $(CSRCS:.c=.d)

libeez.a: $(OBJS)
	@echo "  AR    $@"
	@rm -f $@
	@$(AR) cr $@ $(OBJS)

include $(CIRCLEHOME)/Rules.mk

INCLUDE += -I $(LVGL_DIR) -I $(CIRCLEHOME)

-include $(DEPS)
