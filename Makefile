OBJS = bank0.asm
OBJS_NAME = bank0

OBJ_NAME = build/gb

ASM = rgbasm

LINK = rgblink

FIX = rgbfix

WINE = "wine64"

ifeq ($(shell type wine64), "wine64 not found")
	WINE = ""
endif

all : $(OBJS)
	$(ASM) -o$(OBJS_NAME).obj $(OBJS)
	$(LINK) -m$(OBJ_NAME).map -n$(OBJ_NAME).sym -o$(OBJ_NAME).gb $(OBJS_NAME).obj
	$(FIX) -v $(OBJ_NAME).gb
	rm $(OBJS_NAME).obj

run: all
	$(WINE) ./build/bgb64.exe ./build/gb.gb