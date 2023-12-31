BUILD_DIR = $(cur__target_dir)
SOURCE_DIR = $(cur__root)
PREFIX = $(cur__install)
PREFIX_LIB = $(cur__lib)
CC = x86_64-w64-mingw32-gcc
AR = x86_64-w64-mingw32-ar
LIBNAME = NtdllStubs

all:
	$(CC) -c lib.c -o $(BUILD_DIR)/lib.o
	$(AR) -q $(BUILD_DIR)/$(LIBNAME).a $(BUILD_DIR)/lib.o

install:
	install $(BUILD_DIR)/$(LIBNAME).a $(PREFIX_LIB)
