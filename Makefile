CC=gcc

IDIR =./include
local_CFLAGS=-I$(IDIR)

ODIR=output
_OBJ = GIn.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

SRC = src/*.c

.PHONY: clean
.SILENT: GIn clean

GIn:
	$(CC)  -o $(OBJ) $(SRC) $(CFLAGS) $(local_CFLAGS)

clean:
	rm -f $(ODIR)/GIn.o
