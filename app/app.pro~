TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
  load.c\
show.c\
shownum.c\
editor.c\
text/cursors.c\
text/append_line.c\
text/process_forward.c\
text/create_text.c\
text/remove_all.c\
text/tracer.c\
save.c\
text/process_forward_extra_option.c
HEADERS += \
 common.h\
text/text.h\
text/_text.h

QMAKE_CFLAGS += -Wall -Wextra -Werror

# gcov
QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov
