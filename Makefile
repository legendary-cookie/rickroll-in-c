CC := gcc#clang
CFLAGS := `sdl2-config --libs --cflags` -lSDL2 -lSDL2_mixer
HDRS :=
SRCS := src/main.c
OBJS := $(SRCS:.c=.o)
EXEC := rickroll

all: $(EXEC)
showfont: showfont.c Makefile
	$(CC) -o $@ $@.c $(CFLAGS) $(LIBS)
glfont: glfont.c Makefile
	$(CC) -o $@ $@.c $(CFLAGS) $(LIBS)

$(EXEC): $(OBJS) $(HDRS) Makefile
	$(CC) -o $@ $(OBJS) $(CFLAGS)
deb:
	cp $(EXEC) deb/usr/bin/$(EXEC)
	dpkg-deb --root-owner-group -b deb/ rickroll-1.0-0.deb
clean:
	rm -f $(EXEC) $(OBJS)
.PHONY: all clean deb


