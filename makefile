BIN = bin
SRC = hello
CC = arm-linux-gnueabihf-g++
AS = arm-linux-gnueabihf-as
LD = arm-linux-gnueabihf-gcc
CFLAGS = -mcpu=cortex-a72 -mfloat-abi=hard

OBJ = bin/hello2.s.o

$(BIN)/%.o: $(SRC)/%.cpp
	$(CC) -o $@ $< $(CFLAGS)

$(BIN)/%.s.o: $(SRC)/%.s
	$(AS) -o $@ $< $(CFLAGS)

$(BIN)/%.asm.o: $(SRC)/%.asm
	$(AS) -o $@ $< $(CFLAGS)

boot: $(OBJ)
	$(LD) -o $@ $^ $(CFLAGS)
	

clean:
	rm -f $(OBJ)